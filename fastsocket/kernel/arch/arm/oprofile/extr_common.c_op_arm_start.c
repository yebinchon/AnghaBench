
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* start ) () ;} ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int op_arm_enabled ;
 TYPE_1__* op_arm_model ;
 int op_arm_mutex ;
 int stub1 () ;

__attribute__((used)) static int op_arm_start(void)
{
 int ret = -EBUSY;

 mutex_lock(&op_arm_mutex);
 if (!op_arm_enabled) {
  ret = op_arm_model->start();
  op_arm_enabled = !ret;
 }
 mutex_unlock(&op_arm_mutex);
 return ret;
}
