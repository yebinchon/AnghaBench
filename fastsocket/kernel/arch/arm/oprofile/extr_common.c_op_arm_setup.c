
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* setup_ctrs ) () ;} ;


 TYPE_1__* op_arm_model ;
 int oprofilefs_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;

__attribute__((used)) static int op_arm_setup(void)
{
 int ret;

 spin_lock(&oprofilefs_lock);
 ret = op_arm_model->setup_ctrs();
 spin_unlock(&oprofilefs_lock);
 return ret;
}
