
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int list; } ;


 int list_del (int *) ;
 int ssb_buses_lock () ;
 int ssb_buses_unlock () ;
 int ssb_devices_unregister (struct ssb_bus*) ;
 int ssb_iounmap (struct ssb_bus*) ;
 int ssb_pci_exit (struct ssb_bus*) ;
 int ssb_pcmcia_exit (struct ssb_bus*) ;

void ssb_bus_unregister(struct ssb_bus *bus)
{
 ssb_buses_lock();
 ssb_devices_unregister(bus);
 list_del(&bus->list);
 ssb_buses_unlock();

 ssb_pcmcia_exit(bus);
 ssb_pci_exit(bus);
 ssb_iounmap(bus);
}
