
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_isa_config_struc {int dummy; } ;


 int __pnp_bios_isapnp_config (struct pnp_isa_config_struc*) ;
 int pnpbios_print_status (char*,int) ;

int pnp_bios_isapnp_config(struct pnp_isa_config_struc *data)
{
 int status;

 status = __pnp_bios_isapnp_config(data);
 if (status)
  pnpbios_print_status("isapnp_config", status);
 return status;
}
