
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int tmp_nodenum ;
struct pnp_bios_node {int dummy; } ;


 int PNP_DS ;
 int PNP_FUNCTION_NOT_SUPPORTED ;
 int PNP_GET_SYS_DEV_NODE ;
 int PNP_TS1 ;
 int PNP_TS2 ;
 int call_pnp_bios (int ,int ,int ,int ,int ,int,int ,int ,int*,int,struct pnp_bios_node*,int) ;
 int pnp_bios_present () ;
 scalar_t__ pnpbios_dont_use_current_config ;

__attribute__((used)) static int __pnp_bios_get_dev_node(u8 *nodenum, char boot,
       struct pnp_bios_node *data)
{
 u16 status;
 u16 tmp_nodenum;

 if (!pnp_bios_present())
  return PNP_FUNCTION_NOT_SUPPORTED;
 if (!boot && pnpbios_dont_use_current_config)
  return PNP_FUNCTION_NOT_SUPPORTED;
 tmp_nodenum = *nodenum;
 status = call_pnp_bios(PNP_GET_SYS_DEV_NODE, 0, PNP_TS1, 0, PNP_TS2,
          boot ? 2 : 1, PNP_DS, 0, &tmp_nodenum,
          sizeof(tmp_nodenum), data, 65536);
 *nodenum = tmp_nodenum;
 return status;
}
