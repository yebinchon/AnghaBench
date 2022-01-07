
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_cnt; } ;
typedef TYPE_1__ isdn_net_local ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static __inline__ void isdn_net_zero_frame_cnt(isdn_net_local *lp)
{
 atomic_set(&lp->frame_cnt, 0);
}
