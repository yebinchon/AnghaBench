
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tqueue; int super_tx_queue; int frame_cnt; } ;
typedef TYPE_1__ isdn_net_local ;


 int atomic_dec (int *) ;
 int isdn_net_device_busy (TYPE_1__*) ;
 int isdn_net_device_wake_queue (TYPE_1__*) ;
 int schedule_work (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static __inline__ void isdn_net_dec_frame_cnt(isdn_net_local *lp)
{
 atomic_dec(&lp->frame_cnt);

 if (!(isdn_net_device_busy(lp))) {
  if (!skb_queue_empty(&lp->super_tx_queue)) {
   schedule_work(&lp->tqueue);
  } else {
   isdn_net_device_wake_queue(lp);
  }
       }
}
