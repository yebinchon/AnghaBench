
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HvLpEvent {int xSizeMinus1; } ;


 int IT_LP_EVENT_ALIGN ;
 int hvlpevent_invalidate (struct HvLpEvent*) ;
 int mb () ;

__attribute__((used)) static void hvlpevent_clear_valid(struct HvLpEvent * event)
{




 struct HvLpEvent *tmp;
 unsigned extra = ((event->xSizeMinus1 + IT_LP_EVENT_ALIGN) /
    IT_LP_EVENT_ALIGN) - 1;

 switch (extra) {
 case 3:
  tmp = (struct HvLpEvent*)((char*)event + 3 * IT_LP_EVENT_ALIGN);
  hvlpevent_invalidate(tmp);
 case 2:
  tmp = (struct HvLpEvent*)((char*)event + 2 * IT_LP_EVENT_ALIGN);
  hvlpevent_invalidate(tmp);
 case 1:
  tmp = (struct HvLpEvent*)((char*)event + 1 * IT_LP_EVENT_ALIGN);
  hvlpevent_invalidate(tmp);
 }

 mb();

 hvlpevent_invalidate(event);
}
