
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct device_node {char* name; } ;


 int MII_BUS_ID_SIZE ;
 scalar_t__ OF_BAD_ADDR ;
 int * of_get_address (struct device_node*,int ,int *,int *) ;
 scalar_t__ of_translate_address (struct device_node*,int const*) ;
 int snprintf (char*,int ,char*,char*,unsigned long long) ;

void fsl_pq_mdio_bus_name(char *name, struct device_node *np)
{
 const u32 *addr;
 u64 taddr = OF_BAD_ADDR;

 addr = of_get_address(np, 0, ((void*)0), ((void*)0));
 if (addr)
  taddr = of_translate_address(np, addr);

 snprintf(name, MII_BUS_ID_SIZE, "%s@%llx", np->name,
  (unsigned long long)taddr);
}
