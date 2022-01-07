
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int md; } ;


 int DMERR (char*) ;
 int dm_table_alloc_md_mempools (struct dm_table*) ;
 int dm_table_build_index (struct dm_table*) ;
 int dm_table_prealloc_integrity (struct dm_table*,int ) ;
 int dm_table_set_type (struct dm_table*) ;

int dm_table_complete(struct dm_table *t)
{
 int r;

 r = dm_table_set_type(t);
 if (r) {
  DMERR("unable to set table type");
  return r;
 }

 r = dm_table_build_index(t);
 if (r) {
  DMERR("unable to build btrees");
  return r;
 }

 r = dm_table_prealloc_integrity(t, t->md);
 if (r) {
  DMERR("could not register integrity profile.");
  return r;
 }

 r = dm_table_alloc_md_mempools(t);
 if (r)
  DMERR("unable to allocate mempools");

 return r;
}
