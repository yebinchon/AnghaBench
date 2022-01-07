
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpld_video_driver ;
 int i2c_add_driver (int *) ;

__attribute__((used)) static void evm_init_cpld(void)
{
 i2c_add_driver(&cpld_video_driver);
}
