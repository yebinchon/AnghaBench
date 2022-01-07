
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {struct block_device* md_dev; struct mapped_device* pool_md; } ;
struct mapped_device {int dummy; } ;
struct block_device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct pool* ERR_PTR (int ) ;
 int __pool_inc (struct pool*) ;
 struct pool* __pool_table_lookup (struct mapped_device*) ;
 struct pool* __pool_table_lookup_metadata_dev (struct block_device*) ;
 struct pool* pool_create (struct mapped_device*,struct block_device*,unsigned long,int,char**) ;

__attribute__((used)) static struct pool *__pool_find(struct mapped_device *pool_md,
    struct block_device *metadata_dev,
    unsigned long block_size, int read_only,
    char **error, int *created)
{
 struct pool *pool = __pool_table_lookup_metadata_dev(metadata_dev);

 if (pool) {
  if (pool->pool_md != pool_md) {
   *error = "metadata device already in use by a pool";
   return ERR_PTR(-EBUSY);
  }
  __pool_inc(pool);

 } else {
  pool = __pool_table_lookup(pool_md);
  if (pool) {
   if (pool->md_dev != metadata_dev) {
    *error = "different pool cannot replace a pool";
    return ERR_PTR(-EINVAL);
   }
   __pool_inc(pool);

  } else {
   pool = pool_create(pool_md, metadata_dev, block_size, read_only, error);
   *created = 1;
  }
 }

 return pool;
}
