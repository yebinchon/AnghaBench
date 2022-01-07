
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_cmd_request {int dummy; } ;
struct stor_mem_pools {int request_pool; int request_mempool; } ;
struct scsi_device {struct stor_mem_pools* hostdata; int sdev_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLAB_HWCACHE_ALIGN ;
 int STORVSC_MIN_BUF_NR ;
 int dev_name (int *) ;
 int kfree (struct stor_mem_pools*) ;
 int kmem_cache_create (int ,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 struct stor_mem_pools* kzalloc (int,int ) ;
 int mempool_alloc_slab ;
 int mempool_create (int,int ,int ,int ) ;
 int mempool_free_slab ;

__attribute__((used)) static int storvsc_device_alloc(struct scsi_device *sdevice)
{
 struct stor_mem_pools *memp;
 int number = STORVSC_MIN_BUF_NR;

 memp = kzalloc(sizeof(struct stor_mem_pools), GFP_KERNEL);
 if (!memp)
  return -ENOMEM;

 memp->request_pool =
  kmem_cache_create(dev_name(&sdevice->sdev_dev),
    sizeof(struct storvsc_cmd_request), 0,
    SLAB_HWCACHE_ALIGN, ((void*)0));

 if (!memp->request_pool)
  goto err0;

 memp->request_mempool = mempool_create(number, mempool_alloc_slab,
      mempool_free_slab,
      memp->request_pool);

 if (!memp->request_mempool)
  goto err1;

 sdevice->hostdata = memp;

 return 0;

err1:
 kmem_cache_destroy(memp->request_pool);

err0:
 kfree(memp);
 return -ENOMEM;
}
