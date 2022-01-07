
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int mempools; int integrity_supported; } ;


 int DMWARN (char*) ;
 unsigned int DM_TYPE_NONE ;
 int EINVAL ;
 int ENOMEM ;
 int dm_alloc_md_mempools (unsigned int,int ) ;
 unsigned int dm_table_get_type (struct dm_table*) ;
 scalar_t__ unlikely (int) ;

int dm_table_alloc_md_mempools(struct dm_table *t)
{
 unsigned type = dm_table_get_type(t);

 if (unlikely(type == DM_TYPE_NONE)) {
  DMWARN("no table type is set, can't allocate mempools");
  return -EINVAL;
 }

 t->mempools = dm_alloc_md_mempools(type, t->integrity_supported);
 if (!t->mempools)
  return -ENOMEM;

 return 0;
}
