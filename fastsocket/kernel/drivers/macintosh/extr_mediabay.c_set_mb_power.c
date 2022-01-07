
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_bay_info {int timer; int index; int state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power ) (struct media_bay_info*,int) ;} ;


 int MBDBG (char*,int ) ;
 int MB_POWER_DELAY ;
 int mb_powering_down ;
 int mb_powering_up ;
 int msecs_to_jiffies (int ) ;
 int stub1 (struct media_bay_info*,int) ;
 int stub2 (struct media_bay_info*,int) ;

__attribute__((used)) static inline void set_mb_power(struct media_bay_info* bay, int onoff)
{

 if (onoff) {
  bay->ops->power(bay, 1);
  bay->state = mb_powering_up;
  MBDBG("mediabay%d: powering up\n", bay->index);
 } else {

  bay->ops->power(bay, 0);
  bay->state = mb_powering_down;
  MBDBG("mediabay%d: powering down\n", bay->index);
 }
 bay->timer = msecs_to_jiffies(MB_POWER_DELAY);
}
