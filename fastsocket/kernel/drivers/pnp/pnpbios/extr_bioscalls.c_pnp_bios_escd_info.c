
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct escd_info_struc {int dummy; } ;


 int __pnp_bios_escd_info (struct escd_info_struc*) ;
 int pnpbios_print_status (char*,int) ;

int pnp_bios_escd_info(struct escd_info_struc *data)
{
 int status;

 status = __pnp_bios_escd_info(data);
 if (status)
  pnpbios_print_status("escd_info", status);
 return status;
}
