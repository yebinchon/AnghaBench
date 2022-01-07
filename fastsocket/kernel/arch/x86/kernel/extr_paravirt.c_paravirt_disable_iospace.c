
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioport_resource ;
 int request_resource (int *,int *) ;
 int reserve_ioports ;

int paravirt_disable_iospace(void)
{
 return request_resource(&ioport_resource, &reserve_ioports);
}
