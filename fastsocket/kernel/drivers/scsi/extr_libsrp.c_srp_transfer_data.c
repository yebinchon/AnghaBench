
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct srp_indirect_buf {int dummy; } ;
struct srp_direct_buf {int dummy; } ;
struct srp_cmd {int add_cdb_len; int buf_fmt; int add_data; } ;
struct scsi_cmnd {int dummy; } ;
typedef int srp_rdma_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;



 scalar_t__ data_out_desc_size (struct srp_cmd*) ;
 int eprintk (char*,int,int) ;
 int srp_cmd_direction (struct srp_cmd*) ;
 int srp_direct_data (struct scsi_cmnd*,struct srp_direct_buf*,int,int ,int,int) ;
 int srp_indirect_data (struct scsi_cmnd*,struct srp_cmd*,struct srp_indirect_buf*,int,int ,int,int) ;

int srp_transfer_data(struct scsi_cmnd *sc, struct srp_cmd *cmd,
        srp_rdma_t rdma_io, int dma_map, int ext_desc)
{
 struct srp_direct_buf *md;
 struct srp_indirect_buf *id;
 enum dma_data_direction dir;
 int offset, err = 0;
 u8 format;

 offset = cmd->add_cdb_len * 4;

 dir = srp_cmd_direction(cmd);
 if (dir == DMA_FROM_DEVICE)
  offset += data_out_desc_size(cmd);

 if (dir == DMA_TO_DEVICE)
  format = cmd->buf_fmt >> 4;
 else
  format = cmd->buf_fmt & ((1U << 4) - 1);

 switch (format) {
 case 128:
  break;
 case 130:
  md = (struct srp_direct_buf *)
   (cmd->add_data + offset);
  err = srp_direct_data(sc, md, dir, rdma_io, dma_map, ext_desc);
  break;
 case 129:
  id = (struct srp_indirect_buf *)
   (cmd->add_data + offset);
  err = srp_indirect_data(sc, cmd, id, dir, rdma_io, dma_map,
     ext_desc);
  break;
 default:
  eprintk("Unknown format %d %x\n", dir, format);
  err = -EINVAL;
 }

 return err;
}
