
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_md_mempools {scalar_t__ bs; scalar_t__ tio_pool; scalar_t__ io_pool; } ;


 int bioset_free (scalar_t__) ;
 int kfree (struct dm_md_mempools*) ;
 int mempool_destroy (scalar_t__) ;

void dm_free_md_mempools(struct dm_md_mempools *pools)
{
 if (!pools)
  return;

 if (pools->io_pool)
  mempool_destroy(pools->io_pool);

 if (pools->tio_pool)
  mempool_destroy(pools->tio_pool);

 if (pools->bs)
  bioset_free(pools->bs);

 kfree(pools);
}
