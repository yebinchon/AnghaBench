
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * get_device_handler (char const*) ;

int scsi_dh_handler_exist(const char *name)
{
 return (get_device_handler(name) != ((void*)0));
}
