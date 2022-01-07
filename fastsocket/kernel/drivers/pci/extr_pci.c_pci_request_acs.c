
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_acs_enable ;

void pci_request_acs(void)
{
 pci_acs_enable = 1;
}
