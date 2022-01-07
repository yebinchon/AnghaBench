
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug (char*) ;
 int free_slots () ;
 int ibmphp_free_bus_info_queue () ;
 int ibmphp_free_ebda_hpc_queue () ;
 int ibmphp_free_ebda_pci_rsrc_queue () ;
 int ibmphp_free_resources () ;
 int ibmphp_pci_bus ;
 int kfree (int ) ;

__attribute__((used)) static void ibmphp_unload(void)
{
 free_slots();
 debug("after slots\n");
 ibmphp_free_resources();
 debug("after resources\n");
 ibmphp_free_bus_info_queue();
 debug("after bus info\n");
 ibmphp_free_ebda_hpc_queue();
 debug("after ebda hpc\n");
 ibmphp_free_ebda_pci_rsrc_queue();
 debug("after ebda pci rsrc\n");
 kfree(ibmphp_pci_bus);
}
