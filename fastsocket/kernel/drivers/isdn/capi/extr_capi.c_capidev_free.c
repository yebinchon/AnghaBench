
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ applid; } ;
struct capidev {int list; int ncci_list_mtx; int recvqueue; TYPE_1__ ap; } ;


 int capi20_release (TYPE_1__*) ;
 int capidev_list_lock ;
 int capincci_free (struct capidev*,int) ;
 int kfree (struct capidev*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_queue_purge (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void capidev_free(struct capidev *cdev)
{
 unsigned long flags;

 if (cdev->ap.applid) {
  capi20_release(&cdev->ap);
  cdev->ap.applid = 0;
 }
 skb_queue_purge(&cdev->recvqueue);

 mutex_lock(&cdev->ncci_list_mtx);
 capincci_free(cdev, 0xffffffff);
 mutex_unlock(&cdev->ncci_list_mtx);

 write_lock_irqsave(&capidev_list_lock, flags);
 list_del(&cdev->list);
 write_unlock_irqrestore(&capidev_list_lock, flags);
 kfree(cdev);
}
