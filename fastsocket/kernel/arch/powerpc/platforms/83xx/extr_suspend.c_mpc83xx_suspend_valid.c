
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 scalar_t__ PM_SUSPEND_MEM ;
 scalar_t__ PM_SUSPEND_STANDBY ;

__attribute__((used)) static int mpc83xx_suspend_valid(suspend_state_t state)
{
 return state == PM_SUSPEND_STANDBY || state == PM_SUSPEND_MEM;
}
