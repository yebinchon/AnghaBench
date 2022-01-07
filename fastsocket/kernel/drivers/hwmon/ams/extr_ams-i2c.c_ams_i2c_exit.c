
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ams_i2c_driver ;
 int i2c_del_driver (int *) ;

__attribute__((used)) static void ams_i2c_exit(void)
{
 i2c_del_driver(&ams_i2c_driver);
}
