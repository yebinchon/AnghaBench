
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nents; int sgl; } ;
struct scsi_data_buffer {int length; TYPE_1__ table; } ;
struct request {int q; int * buffer; int nr_phys_segments; } ;
typedef int gfp_t ;


 int BLKPREP_DEFER ;
 int BLKPREP_OK ;
 int BUG_ON (int) ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_map_sg (int ,struct request*,int ) ;
 int scsi_alloc_sgtable (struct scsi_data_buffer*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int scsi_init_sgtable(struct request *req, struct scsi_data_buffer *sdb,
        gfp_t gfp_mask)
{
 int count;




 if (unlikely(scsi_alloc_sgtable(sdb, req->nr_phys_segments,
     gfp_mask))) {
  return BLKPREP_DEFER;
 }

 req->buffer = ((void*)0);





 count = blk_rq_map_sg(req->q, req, sdb->table.sgl);
 BUG_ON(count > sdb->table.nents);
 sdb->table.nents = count;
 sdb->length = blk_rq_bytes(req);
 return BLKPREP_OK;
}
