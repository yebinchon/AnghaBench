
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev_node_info {int dummy; } ;


 int __pnp_bios_dev_node_info (struct pnp_dev_node_info*) ;
 int pnpbios_print_status (char*,int) ;

int pnp_bios_dev_node_info(struct pnp_dev_node_info *data)
{
 int status = __pnp_bios_dev_node_info(data);

 if (status)
  pnpbios_print_status("dev_node_info", status);
 return status;
}
