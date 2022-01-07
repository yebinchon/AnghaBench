
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_cnt; } ;
typedef TYPE_1__ isdn_net_local ;


 scalar_t__ ISDN_NET_MAX_QUEUE_LENGTH ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static __inline__ int isdn_net_lp_busy(isdn_net_local *lp)
{
 if (atomic_read(&lp->frame_cnt) < ISDN_NET_MAX_QUEUE_LENGTH)
  return 0;
 else
  return 1;
}
