
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {void (* release_fn ) (struct pci_host_bridge*) ;void* release_data; } ;



void pci_set_host_bridge_release(struct pci_host_bridge *bridge,
     void (*release_fn)(struct pci_host_bridge *),
     void *release_data)
{
 bridge->release_fn = release_fn;
 bridge->release_data = release_data;
}
