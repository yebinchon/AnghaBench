
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int open_count; scalar_t__ excl; } ;


 TYPE_1__ cpustate ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cpustate_free_ref(void)
{

 spin_lock(&cpustate.lock);

 cpustate.excl = 0;
 cpustate.open_count--;

 spin_unlock(&cpustate.lock);
 return 0;
}
