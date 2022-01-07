
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pnp_bios_node {int dummy; } ;


 int __pnp_bios_get_dev_node (int *,char,struct pnp_bios_node*) ;
 int pnpbios_print_status (char*,int) ;

int pnp_bios_get_dev_node(u8 *nodenum, char boot, struct pnp_bios_node *data)
{
 int status;

 status = __pnp_bios_get_dev_node(nodenum, boot, data);
 if (status)
  pnpbios_print_status("get_dev_node", status);
 return status;
}
