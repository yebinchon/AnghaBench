
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_device {int dummy; } ;
struct bcma_bus {int drv_cc; } ;


 int BCMA_CORE_4706_MAC_GBIT_COMMON ;
 int BCMA_CORE_MIPS_74K ;
 int BCMA_CORE_PCIE ;
 int EBUSY ;
 int bcma_err (struct bcma_bus*,char*,...) ;
 struct bcma_device* bcma_find_core (struct bcma_bus*,int ) ;
 int bcma_gpio_unregister (int *) ;
 int bcma_unregister_cores (struct bcma_bus*) ;
 int kfree (struct bcma_device*) ;

void bcma_bus_unregister(struct bcma_bus *bus)
{
 struct bcma_device *cores[3];
 int err;

 err = bcma_gpio_unregister(&bus->drv_cc);
 if (err == -EBUSY)
  bcma_err(bus, "Some GPIOs are still in use.\n");
 else if (err)
  bcma_err(bus, "Can not unregister GPIO driver: %i\n", err);

 cores[0] = bcma_find_core(bus, BCMA_CORE_MIPS_74K);
 cores[1] = bcma_find_core(bus, BCMA_CORE_PCIE);
 cores[2] = bcma_find_core(bus, BCMA_CORE_4706_MAC_GBIT_COMMON);

 bcma_unregister_cores(bus);

 kfree(cores[2]);
 kfree(cores[1]);
 kfree(cores[0]);
}
