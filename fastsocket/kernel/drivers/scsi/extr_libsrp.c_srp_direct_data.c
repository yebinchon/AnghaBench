
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srp_direct_buf {int len; } ;
struct TYPE_3__ {scalar_t__ ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct scatterlist {int dummy; } ;
struct iu_entry {TYPE_2__* target; } ;
typedef int (* srp_rdma_t ) (struct scsi_cmnd*,struct scatterlist*,int,struct srp_direct_buf*,int,int,int) ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_map_sg (int ,struct scatterlist*,int ,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;
 int dprintk (char*,struct iu_entry*,int ,int,int ) ;
 int min (int ,int) ;
 int printk (char*,struct iu_entry*,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 struct scatterlist* scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static int srp_direct_data(struct scsi_cmnd *sc, struct srp_direct_buf *md,
      enum dma_data_direction dir, srp_rdma_t rdma_io,
      int dma_map, int ext_desc)
{
 struct iu_entry *iue = ((void*)0);
 struct scatterlist *sg = ((void*)0);
 int err, nsg = 0, len;

 if (dma_map) {
  iue = (struct iu_entry *) sc->SCp.ptr;
  sg = scsi_sglist(sc);

  dprintk("%p %u %u %d\n", iue, scsi_bufflen(sc),
   md->len, scsi_sg_count(sc));

  nsg = dma_map_sg(iue->target->dev, sg, scsi_sg_count(sc),
     DMA_BIDIRECTIONAL);
  if (!nsg) {
   printk("fail to map %p %d\n", iue, scsi_sg_count(sc));
   return 0;
  }
  len = min(scsi_bufflen(sc), md->len);
 } else
  len = md->len;

 err = rdma_io(sc, sg, nsg, md, 1, dir, len);

 if (dma_map)
  dma_unmap_sg(iue->target->dev, sg, nsg, DMA_BIDIRECTIONAL);

 return err;
}
