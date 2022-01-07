
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stop ) () ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ op_arm_enabled ;
 TYPE_1__* op_arm_model ;
 int op_arm_mutex ;
 int stub1 () ;

__attribute__((used)) static void op_arm_stop(void)
{
 mutex_lock(&op_arm_mutex);
 if (op_arm_enabled)
  op_arm_model->stop();
 op_arm_enabled = 0;
 mutex_unlock(&op_arm_mutex);
}
