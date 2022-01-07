
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;




 int pnx4008_standby () ;
 int pnx4008_suspend () ;

__attribute__((used)) static int pnx4008_pm_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  pnx4008_standby();
  break;
 case 129:
  pnx4008_suspend();
  break;
 }
 return 0;
}
