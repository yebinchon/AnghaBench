
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pnp_dev_node_info {int no_nodes; } ;


 int PNP_DS ;
 int PNP_FUNCTION_NOT_SUPPORTED ;
 int PNP_GET_NUM_SYS_DEV_NODES ;
 int PNP_TS1 ;
 int call_pnp_bios (int ,int ,int ,int,int ,int ,int ,int ,struct pnp_dev_node_info*,int,int *,int ) ;
 int pnp_bios_present () ;

__attribute__((used)) static int __pnp_bios_dev_node_info(struct pnp_dev_node_info *data)
{
 u16 status;

 if (!pnp_bios_present())
  return PNP_FUNCTION_NOT_SUPPORTED;
 status = call_pnp_bios(PNP_GET_NUM_SYS_DEV_NODES, 0, PNP_TS1, 2,
          PNP_TS1, PNP_DS, 0, 0, data,
          sizeof(struct pnp_dev_node_info), ((void*)0), 0);
 data->no_nodes &= 0xff;
 return status;
}
