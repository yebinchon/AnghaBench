
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2o_driver_unregister (int *) ;
 int i2o_exec_driver ;

void i2o_exec_exit(void)
{
 i2o_driver_unregister(&i2o_exec_driver);
}
