
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_device {int wq_done; int wq_free; int dev_list; int done_list; int busy_list; int max_queue; int lock; } ;


 int BSG_DEFAULT_CMDS ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct bsg_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bsg_device *bsg_alloc_device(void)
{
 struct bsg_device *bd;

 bd = kzalloc(sizeof(struct bsg_device), GFP_KERNEL);
 if (unlikely(!bd))
  return ((void*)0);

 spin_lock_init(&bd->lock);

 bd->max_queue = BSG_DEFAULT_CMDS;

 INIT_LIST_HEAD(&bd->busy_list);
 INIT_LIST_HEAD(&bd->done_list);
 INIT_HLIST_NODE(&bd->dev_list);

 init_waitqueue_head(&bd->wq_free);
 init_waitqueue_head(&bd->wq_done);
 return bd;
}
