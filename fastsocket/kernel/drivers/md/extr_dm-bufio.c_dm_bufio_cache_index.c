
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int blocks_per_page_bits; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int BUG_ON (int) ;
 int dm_bufio_caches ;

__attribute__((used)) static inline int dm_bufio_cache_index(struct dm_bufio_client *c)
{
 unsigned ret = c->blocks_per_page_bits - 1;

 BUG_ON(ret >= ARRAY_SIZE(dm_bufio_caches));

 return ret;
}
