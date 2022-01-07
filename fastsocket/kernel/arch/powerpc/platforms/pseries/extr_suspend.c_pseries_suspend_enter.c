
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_3__ {int done; } ;


 int mb () ;
 int rtas_suspend_last_cpu (TYPE_1__*) ;
 int smp_wmb () ;
 TYPE_1__ suspend_data ;
 scalar_t__ suspending ;

__attribute__((used)) static int pseries_suspend_enter(suspend_state_t state)
{
 int rc = rtas_suspend_last_cpu(&suspend_data);

 smp_wmb();
 suspending = 0;
 suspend_data.done = 1;



 mb();
 return rc;
}
