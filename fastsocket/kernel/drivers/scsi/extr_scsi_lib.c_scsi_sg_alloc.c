
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_sg_pool {int pool; } ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 struct scatterlist* mempool_alloc (int ,int ) ;
 struct scsi_host_sg_pool* scsi_sg_pools ;
 int scsi_sgtable_index (unsigned int) ;

__attribute__((used)) static struct scatterlist *scsi_sg_alloc(unsigned int nents, gfp_t gfp_mask)
{
 struct scsi_host_sg_pool *sgp;

 sgp = scsi_sg_pools + scsi_sgtable_index(nents);
 return mempool_alloc(sgp->pool, gfp_mask);
}
