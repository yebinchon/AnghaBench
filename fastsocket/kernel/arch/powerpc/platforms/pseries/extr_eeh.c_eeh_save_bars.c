
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int * config_space; } ;


 int rtas_read_config (struct pci_dn*,int,int,int *) ;

__attribute__((used)) static void eeh_save_bars(struct pci_dn *pdn)
{
 int i;

 if (!pdn )
  return;

 for (i = 0; i < 16; i++)
  rtas_read_config(pdn, i * 4, 4, &pdn->config_space[i]);
}
