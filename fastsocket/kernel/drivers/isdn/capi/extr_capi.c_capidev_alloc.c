
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capidev {int list; int recvwait; int recvqueue; int ncci_list_mtx; } ;


 int GFP_KERNEL ;
 int capidev_list ;
 int capidev_list_lock ;
 int init_waitqueue_head (int *) ;
 struct capidev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct capidev *capidev_alloc(void)
{
 struct capidev *cdev;
 unsigned long flags;

 cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 if (!cdev)
  return ((void*)0);

 mutex_init(&cdev->ncci_list_mtx);
 skb_queue_head_init(&cdev->recvqueue);
 init_waitqueue_head(&cdev->recvwait);
 write_lock_irqsave(&capidev_list_lock, flags);
 list_add_tail(&cdev->list, &capidev_list);
 write_unlock_irqrestore(&capidev_list_lock, flags);
        return cdev;
}
