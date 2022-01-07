
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int * n_buffers; } ;
struct dm_buffer {size_t list_mode; int lru_list; int hash_list; struct dm_bufio_client* c; } ;


 int BUG_ON (int) ;
 int hlist_del (int *) ;
 int list_del (int *) ;

__attribute__((used)) static void __unlink_buffer(struct dm_buffer *b)
{
 struct dm_bufio_client *c = b->c;

 BUG_ON(!c->n_buffers[b->list_mode]);

 c->n_buffers[b->list_mode]--;
 hlist_del(&b->hash_list);
 list_del(&b->lru_list);
}
