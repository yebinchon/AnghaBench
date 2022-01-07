
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_target_state {struct scatterlist* sg; } ;
struct virtio_scsi_cmd {int resp; int req; struct scsi_cmnd* sc; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct scatterlist {int dummy; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int scsi_in (struct scsi_cmnd*) ;
 int scsi_out (struct scsi_cmnd*) ;
 int sg_set_buf (struct scatterlist*,int *,size_t) ;
 int virtscsi_map_sgl (struct scatterlist*,unsigned int*,int ) ;

__attribute__((used)) static void virtscsi_map_cmd(struct virtio_scsi_target_state *tgt,
        struct virtio_scsi_cmd *cmd,
        unsigned *out_num, unsigned *in_num,
        size_t req_size, size_t resp_size)
{
 struct scsi_cmnd *sc = cmd->sc;
 struct scatterlist *sg = tgt->sg;
 unsigned int idx = 0;


 sg_set_buf(&sg[idx++], &cmd->req, req_size);


 if (sc && sc->sc_data_direction != DMA_FROM_DEVICE)
  virtscsi_map_sgl(sg, &idx, scsi_out(sc));

 *out_num = idx;


 sg_set_buf(&sg[idx++], &cmd->resp, resp_size);


 if (sc && sc->sc_data_direction != DMA_TO_DEVICE)
  virtscsi_map_sgl(sg, &idx, scsi_in(sc));

 *in_num = idx - *out_num;
}
