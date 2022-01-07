
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pnp_bios_get_stat_res (char*) ;
 int pnpbios_print_status (char*,int) ;

int pnp_bios_get_stat_res(char *info)
{
 int status;

 status = __pnp_bios_get_stat_res(info);
 if (status)
  pnpbios_print_status("get_stat_res", status);
 return status;
}
