
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_data_buffer {int table; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int SCSI_MAX_SG_SEGMENTS ;
 int __sg_alloc_table (int *,int,int ,int ,int ) ;
 int __sg_free_table (int *,int ,int ) ;
 int scsi_sg_alloc ;
 int scsi_sg_free ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int scsi_alloc_sgtable(struct scsi_data_buffer *sdb, int nents,
         gfp_t gfp_mask)
{
 int ret;

 BUG_ON(!nents);

 ret = __sg_alloc_table(&sdb->table, nents, SCSI_MAX_SG_SEGMENTS,
          gfp_mask, scsi_sg_alloc);
 if (unlikely(ret))
  __sg_free_table(&sdb->table, SCSI_MAX_SG_SEGMENTS,
    scsi_sg_free);

 return ret;
}
