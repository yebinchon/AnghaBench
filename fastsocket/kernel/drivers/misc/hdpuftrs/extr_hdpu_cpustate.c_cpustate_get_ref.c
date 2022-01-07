
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int excl; int lock; scalar_t__ open_count; } ;


 int EBUSY ;
 TYPE_1__ cpustate ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cpustate_get_ref(int excl)
{

 int retval = -EBUSY;

 spin_lock(&cpustate.lock);

 if (cpustate.excl)
  goto out_busy;

 if (excl) {
  if (cpustate.open_count)
   goto out_busy;
  cpustate.excl = 1;
 }

 cpustate.open_count++;
 retval = 0;

      out_busy:
 spin_unlock(&cpustate.lock);
 return retval;
}
