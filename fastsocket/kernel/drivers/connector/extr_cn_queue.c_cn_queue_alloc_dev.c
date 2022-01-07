
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct cn_queue_dev {int wq_creation; struct sock* nls; int wq_created; int queue_lock; int queue_list; int refcnt; int name; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int cn_queue_create ;
 int init_waitqueue_head (int *) ;
 struct cn_queue_dev* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;

struct cn_queue_dev *cn_queue_alloc_dev(char *name, struct sock *nls)
{
 struct cn_queue_dev *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 snprintf(dev->name, sizeof(dev->name), "%s", name);
 atomic_set(&dev->refcnt, 0);
 INIT_LIST_HEAD(&dev->queue_list);
 spin_lock_init(&dev->queue_lock);
 init_waitqueue_head(&dev->wq_created);

 dev->nls = nls;

 INIT_WORK(&dev->wq_creation, cn_queue_create);

 return dev;
}
