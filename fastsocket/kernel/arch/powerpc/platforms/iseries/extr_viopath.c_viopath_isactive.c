
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isActive; } ;
typedef size_t HvLpIndex ;


 size_t HVMAXARCHITECTEDLPS ;
 size_t HvLpIndexInvalid ;
 TYPE_1__* viopathStatus ;

int viopath_isactive(HvLpIndex lp)
{
 if (lp == HvLpIndexInvalid)
  return 0;
 if (lp < HVMAXARCHITECTEDLPS)
  return viopathStatus[lp].isActive;
 else
  return 0;
}
