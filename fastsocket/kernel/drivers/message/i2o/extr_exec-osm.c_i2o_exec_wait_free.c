
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_exec_wait {int dummy; } ;


 int kfree (struct i2o_exec_wait*) ;

__attribute__((used)) static void i2o_exec_wait_free(struct i2o_exec_wait *wait)
{
 kfree(wait);
}
