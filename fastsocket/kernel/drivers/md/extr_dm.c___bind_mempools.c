
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int * bs; int * tio_pool; int * io_pool; } ;
struct dm_table {int dummy; } ;
struct dm_md_mempools {int * bs; int * tio_pool; int * io_pool; } ;


 int BUG_ON (int) ;
 int dm_table_free_md_mempools (struct dm_table*) ;
 struct dm_md_mempools* dm_table_get_md_mempools (struct dm_table*) ;

__attribute__((used)) static void __bind_mempools(struct mapped_device *md, struct dm_table *t)
{
 struct dm_md_mempools *p;

 if (md->io_pool && md->tio_pool && md->bs)

  goto out;

 p = dm_table_get_md_mempools(t);
 BUG_ON(!p || md->io_pool || md->tio_pool || md->bs);

 md->io_pool = p->io_pool;
 p->io_pool = ((void*)0);
 md->tio_pool = p->tio_pool;
 p->tio_pool = ((void*)0);
 md->bs = p->bs;
 p->bs = ((void*)0);

out:

 dm_table_free_md_mempools(t);
}
