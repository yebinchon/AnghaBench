
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int * cache_hash; int * lru; int * n_buffers; } ;
struct dm_buffer {int list_mode; int last_accessed; int hash_list; int lru_list; int block; struct dm_bufio_client* c; } ;
typedef int sector_t ;


 size_t DM_BUFIO_HASH (int ) ;
 int hlist_add_head (int *,int *) ;
 int jiffies ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __link_buffer(struct dm_buffer *b, sector_t block, int dirty)
{
 struct dm_bufio_client *c = b->c;

 c->n_buffers[dirty]++;
 b->block = block;
 b->list_mode = dirty;
 list_add(&b->lru_list, &c->lru[dirty]);
 hlist_add_head(&b->hash_list, &c->cache_hash[DM_BUFIO_HASH(block)]);
 b->last_accessed = jiffies;
}
