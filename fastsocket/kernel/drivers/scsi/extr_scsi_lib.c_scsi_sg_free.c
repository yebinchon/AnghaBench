
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_sg_pool {int pool; } ;
struct scatterlist {int dummy; } ;


 int mempool_free (struct scatterlist*,int ) ;
 struct scsi_host_sg_pool* scsi_sg_pools ;
 int scsi_sgtable_index (unsigned int) ;

__attribute__((used)) static void scsi_sg_free(struct scatterlist *sgl, unsigned int nents)
{
 struct scsi_host_sg_pool *sgp;

 sgp = scsi_sg_pools + scsi_sgtable_index(nents);
 mempool_free(sgl, sgp->pool);
}
