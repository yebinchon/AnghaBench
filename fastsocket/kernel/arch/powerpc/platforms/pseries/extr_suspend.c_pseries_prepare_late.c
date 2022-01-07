
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * complete; scalar_t__ error; scalar_t__ done; int working; } ;


 int INIT_COMPLETION (int ) ;
 int atomic_set (int *,int ) ;
 int mb () ;
 TYPE_1__ suspend_data ;
 int suspend_work ;
 int suspending ;

__attribute__((used)) static int pseries_prepare_late(void)
{
 suspending = 1;
 atomic_set(&suspend_data.working, 0);
 suspend_data.done = 0;
 suspend_data.error = 0;
 suspend_data.complete = &suspend_work;
 INIT_COMPLETION(suspend_work);


 mb();
 return 0;
}
