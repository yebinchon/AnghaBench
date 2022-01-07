
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ilo_hwinfo {TYPE_1__** ccb_alloc; } ;
struct TYPE_2__ {int driver_ccb; } ;


 int max_ccb ;
 int set_channel_reset (int *) ;

__attribute__((used)) static void ilo_set_reset(struct ilo_hwinfo *hw)
{
 int slot;





 for (slot = 0; slot < max_ccb; slot++) {
  if (!hw->ccb_alloc[slot])
   continue;
  set_channel_reset(&hw->ccb_alloc[slot]->driver_ccb);
 }
}
