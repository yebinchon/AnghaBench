
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int node; } ;
struct hlist_head {int dummy; } ;
struct elevator_type {int ops; } ;
struct elevator_queue {int * hash; int sysfs_lock; int kobj; struct elevator_type* elevator_type; int * ops; } ;


 int ELV_HASH_ENTRIES ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int __GFP_ZERO ;
 int elevator_put (struct elevator_type*) ;
 int elv_ktype ;
 int kfree (struct elevator_queue*) ;
 void* kmalloc_node (int,int,int ) ;
 int kobject_init (int *,int *) ;
 int mutex_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct elevator_queue *elevator_alloc(struct request_queue *q,
      struct elevator_type *e)
{
 struct elevator_queue *eq;
 int i;

 eq = kmalloc_node(sizeof(*eq), GFP_KERNEL | __GFP_ZERO, q->node);
 if (unlikely(!eq))
  goto err;

 eq->ops = &e->ops;
 eq->elevator_type = e;
 kobject_init(&eq->kobj, &elv_ktype);
 mutex_init(&eq->sysfs_lock);

 eq->hash = kmalloc_node(sizeof(struct hlist_head) * ELV_HASH_ENTRIES,
     GFP_KERNEL, q->node);
 if (!eq->hash)
  goto err;

 for (i = 0; i < ELV_HASH_ENTRIES; i++)
  INIT_HLIST_HEAD(&eq->hash[i]);

 return eq;
err:
 kfree(eq);
 elevator_put(e);
 return ((void*)0);
}
