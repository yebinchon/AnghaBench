
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iowa_bus {TYPE_1__* phb; } ;
struct TYPE_2__ {int cfg_addr; } ;


 int PEXDMRDEN0 ;
 int PEX_IN (int ,int ) ;

__attribute__((used)) static void scc_pciex_io_flush(struct iowa_bus *bus)
{
 (void)PEX_IN(bus->phb->cfg_addr, PEXDMRDEN0);
}
