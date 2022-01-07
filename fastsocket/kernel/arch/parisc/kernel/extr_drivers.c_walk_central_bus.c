
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CENTRAL_BUS_ADDR ;
 int MAX_NATIVE_DEVICES ;
 int NATIVE_DEVICE_OFFSET ;
 int root ;
 int walk_native_bus (scalar_t__,scalar_t__,int *) ;

void walk_central_bus(void)
{
 walk_native_bus(CENTRAL_BUS_ADDR,
   CENTRAL_BUS_ADDR + (MAX_NATIVE_DEVICES * NATIVE_DEVICE_OFFSET),
   &root);
}
