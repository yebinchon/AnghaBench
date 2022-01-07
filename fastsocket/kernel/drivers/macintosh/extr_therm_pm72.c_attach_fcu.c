
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*) ;
 int ENODEV ;
 int FAN_CTRLER_ID ;
 int * attach_i2c_chip (int ,char*) ;
 int * fcu ;

__attribute__((used)) static int attach_fcu(void)
{
 fcu = attach_i2c_chip(FAN_CTRLER_ID, "fcu");
 if (fcu == ((void*)0))
  return -ENODEV;

 DBG("FCU attached\n");

 return 0;
}
