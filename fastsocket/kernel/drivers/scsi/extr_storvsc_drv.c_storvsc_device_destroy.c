
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stor_mem_pools {int request_pool; int request_mempool; } ;
struct scsi_device {struct stor_mem_pools* hostdata; } ;


 int kfree (struct stor_mem_pools*) ;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void storvsc_device_destroy(struct scsi_device *sdevice)
{
 struct stor_mem_pools *memp = sdevice->hostdata;

 mempool_destroy(memp->request_mempool);
 kmem_cache_destroy(memp->request_pool);
 kfree(memp);
 sdevice->hostdata = ((void*)0);
}
