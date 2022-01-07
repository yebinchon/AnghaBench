
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pnp_bios_node {int dummy; } ;


 int PNP_DS ;
 int PNP_FUNCTION_NOT_SUPPORTED ;
 int PNP_SET_SYS_DEV_NODE ;
 int PNP_TS1 ;
 int call_pnp_bios (int ,int ,int ,int ,int,int ,int ,int ,struct pnp_bios_node*,int,int *,int ) ;
 int pnp_bios_present () ;
 scalar_t__ pnpbios_dont_use_current_config ;

__attribute__((used)) static int __pnp_bios_set_dev_node(u8 nodenum, char boot,
       struct pnp_bios_node *data)
{
 u16 status;

 if (!pnp_bios_present())
  return PNP_FUNCTION_NOT_SUPPORTED;
 if (!boot && pnpbios_dont_use_current_config)
  return PNP_FUNCTION_NOT_SUPPORTED;
 status = call_pnp_bios(PNP_SET_SYS_DEV_NODE, nodenum, 0, PNP_TS1,
          boot ? 2 : 1, PNP_DS, 0, 0, data, 65536, ((void*)0),
          0);
 return status;
}
