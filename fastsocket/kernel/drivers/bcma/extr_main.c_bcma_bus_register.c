
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bcma_device {int dummy; } ;
struct TYPE_8__ {struct bcma_device* core; } ;
struct TYPE_7__ {struct bcma_device* core; } ;
struct TYPE_9__ {struct bcma_device* core; } ;
struct bcma_bus {TYPE_3__ drv_gmac_cmn; TYPE_1__* drv_pci; TYPE_2__ drv_mips; TYPE_4__ drv_cc; scalar_t__ num; } ;
struct TYPE_6__ {struct bcma_device* core; } ;


 int BCMA_CORE_4706_MAC_GBIT_COMMON ;
 int BCMA_CORE_MIPS_74K ;
 int BCMA_CORE_PCIE ;
 int ENOENT ;
 int bcma_bus_next_num ;
 int bcma_bus_scan (struct bcma_bus*) ;
 int bcma_buses_mutex ;
 int bcma_cc_core_id (struct bcma_bus*) ;
 int bcma_core_chipcommon_early_init (TYPE_4__*) ;
 int bcma_core_chipcommon_init (TYPE_4__*) ;
 int bcma_core_gmac_cmn_init (TYPE_3__*) ;
 int bcma_core_mips_init (TYPE_2__*) ;
 int bcma_core_pci_init (TYPE_1__*) ;
 int bcma_err (struct bcma_bus*,char*,...) ;
 struct bcma_device* bcma_find_core (struct bcma_bus*,int ) ;
 struct bcma_device* bcma_find_core_unit (struct bcma_bus*,int ,int) ;
 int bcma_info (struct bcma_bus*,char*) ;
 int bcma_register_cores (struct bcma_bus*) ;
 int bcma_sprom_get (struct bcma_bus*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int bcma_bus_register(struct bcma_bus *bus)
{
 int err;
 struct bcma_device *core;

 mutex_lock(&bcma_buses_mutex);
 bus->num = bcma_bus_next_num++;
 mutex_unlock(&bcma_buses_mutex);


 err = bcma_bus_scan(bus);
 if (err) {
  bcma_err(bus, "Failed to scan: %d\n", err);
  return -1;
 }


 core = bcma_find_core(bus, bcma_cc_core_id(bus));
 if (core) {
  bus->drv_cc.core = core;
  bcma_core_chipcommon_early_init(&bus->drv_cc);
 }


 err = bcma_sprom_get(bus);
 if (err == -ENOENT) {
  bcma_err(bus, "No SPROM available\n");
 } else if (err)
  bcma_err(bus, "Failed to get SPROM: %d\n", err);


 core = bcma_find_core(bus, bcma_cc_core_id(bus));
 if (core) {
  bus->drv_cc.core = core;
  bcma_core_chipcommon_init(&bus->drv_cc);
 }


 core = bcma_find_core(bus, BCMA_CORE_MIPS_74K);
 if (core) {
  bus->drv_mips.core = core;
  bcma_core_mips_init(&bus->drv_mips);
 }


 core = bcma_find_core_unit(bus, BCMA_CORE_PCIE, 0);
 if (core) {
  bus->drv_pci[0].core = core;
  bcma_core_pci_init(&bus->drv_pci[0]);
 }


 core = bcma_find_core_unit(bus, BCMA_CORE_PCIE, 1);
 if (core) {
  bus->drv_pci[1].core = core;
  bcma_core_pci_init(&bus->drv_pci[1]);
 }


 core = bcma_find_core(bus, BCMA_CORE_4706_MAC_GBIT_COMMON);
 if (core) {
  bus->drv_gmac_cmn.core = core;
  bcma_core_gmac_cmn_init(&bus->drv_gmac_cmn);
 }


 bcma_register_cores(bus);

 bcma_info(bus, "Bus registered\n");

 return 0;
}
