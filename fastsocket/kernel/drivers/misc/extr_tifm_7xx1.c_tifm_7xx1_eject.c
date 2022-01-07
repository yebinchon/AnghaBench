
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_dev {int socket_id; } ;
struct tifm_adapter {int socket_change_set; int lock; int media_switcher; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tifm_queue_work (int *) ;

__attribute__((used)) static void tifm_7xx1_eject(struct tifm_adapter *fm, struct tifm_dev *sock)
{
 unsigned long flags;

 spin_lock_irqsave(&fm->lock, flags);
 fm->socket_change_set |= 1 << sock->socket_id;
 tifm_queue_work(&fm->media_switcher);
 spin_unlock_irqrestore(&fm->lock, flags);
}
