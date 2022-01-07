
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct srp_indirect_buf {int len; } ;
struct srp_direct_buf {int len; } ;
struct srp_cmd {int add_cdb_len; int buf_fmt; int add_data; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_TO_DEVICE ;



 scalar_t__ data_out_desc_size (struct srp_cmd*) ;
 int eprintk (char*,int) ;

__attribute__((used)) static int vscsis_data_length(struct srp_cmd *cmd, enum dma_data_direction dir)
{
 struct srp_direct_buf *md;
 struct srp_indirect_buf *id;
 int len = 0, offset = cmd->add_cdb_len * 4;
 u8 fmt;

 if (dir == DMA_TO_DEVICE)
  fmt = cmd->buf_fmt >> 4;
 else {
  fmt = cmd->buf_fmt & ((1U << 4) - 1);
  offset += data_out_desc_size(cmd);
 }

 switch (fmt) {
 case 128:
  break;
 case 130:
  md = (struct srp_direct_buf *) (cmd->add_data + offset);
  len = md->len;
  break;
 case 129:
  id = (struct srp_indirect_buf *) (cmd->add_data + offset);
  len = id->len;
  break;
 default:
  eprintk("invalid data format %x\n", fmt);
  break;
 }
 return len;
}
