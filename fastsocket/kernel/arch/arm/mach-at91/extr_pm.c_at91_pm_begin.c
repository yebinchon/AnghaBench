
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int target_state ;

__attribute__((used)) static int at91_pm_begin(suspend_state_t state)
{
 target_state = state;
 return 0;
}
