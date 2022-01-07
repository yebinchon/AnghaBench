
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t HvLpEvent_Type ;


 size_t HvLpEvent_Type_NumTypes ;
 int ** lpEventHandler ;
 int * lpEventHandlerPaths ;
 int might_sleep () ;
 int synchronize_sched () ;

int HvLpEvent_unregisterHandler(HvLpEvent_Type eventType)
{
 might_sleep();

 if (eventType < HvLpEvent_Type_NumTypes) {
  if (!lpEventHandlerPaths[eventType]) {
   lpEventHandler[eventType] = ((void*)0);






   synchronize_sched();
   return 0;
  }
 }
 return 1;
}
