
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frame_cnt; } ;
typedef TYPE_1__ isdn_net_local ;


 int atomic_inc (int *) ;
 scalar_t__ isdn_net_device_busy (TYPE_1__*) ;
 int isdn_net_device_stop_queue (TYPE_1__*) ;

__attribute__((used)) static __inline__ void isdn_net_inc_frame_cnt(isdn_net_local *lp)
{
 atomic_inc(&lp->frame_cnt);
 if (isdn_net_device_busy(lp))
  isdn_net_device_stop_queue(lp);
}
