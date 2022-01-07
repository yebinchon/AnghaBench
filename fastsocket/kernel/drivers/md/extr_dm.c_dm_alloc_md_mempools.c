
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_md_mempools {void* io_pool; void* tio_pool; int bs; } ;


 unsigned int DM_TYPE_BIO_BASED ;
 int GFP_KERNEL ;
 int MIN_IOS ;
 int _io_cache ;
 int _rq_bio_info_cache ;
 int _rq_tio_cache ;
 int _tio_cache ;
 int bioset_create (unsigned int,int ) ;
 int bioset_free (int ) ;
 scalar_t__ bioset_integrity_create (int ,unsigned int) ;
 int kfree (struct dm_md_mempools*) ;
 struct dm_md_mempools* kmalloc (int,int ) ;
 void* mempool_create_slab_pool (int,int ) ;
 int mempool_destroy (void*) ;

struct dm_md_mempools *dm_alloc_md_mempools(unsigned type, unsigned integrity)
{
 struct dm_md_mempools *pools = kmalloc(sizeof(*pools), GFP_KERNEL);
 unsigned int pool_size = (type == DM_TYPE_BIO_BASED) ? 16 : MIN_IOS;

 if (!pools)
  return ((void*)0);

 pools->io_pool = (type == DM_TYPE_BIO_BASED) ?
    mempool_create_slab_pool(MIN_IOS, _io_cache) :
    mempool_create_slab_pool(MIN_IOS, _rq_bio_info_cache);
 if (!pools->io_pool)
  goto free_pools_and_out;

 pools->tio_pool = (type == DM_TYPE_BIO_BASED) ?
     mempool_create_slab_pool(MIN_IOS, _tio_cache) :
     mempool_create_slab_pool(MIN_IOS, _rq_tio_cache);
 if (!pools->tio_pool)
  goto free_io_pool_and_out;

 pools->bs = bioset_create(pool_size, 0);
 if (!pools->bs)
  goto free_tio_pool_and_out;

 if (integrity && bioset_integrity_create(pools->bs, pool_size))
  goto free_bioset_and_out;

 return pools;

free_bioset_and_out:
 bioset_free(pools->bs);

free_tio_pool_and_out:
 mempool_destroy(pools->tio_pool);

free_io_pool_and_out:
 mempool_destroy(pools->io_pool);

free_pools_and_out:
 kfree(pools);

 return ((void*)0);
}
