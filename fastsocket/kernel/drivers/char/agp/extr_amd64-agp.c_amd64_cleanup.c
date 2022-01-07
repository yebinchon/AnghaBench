
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;


 int AMD64_GARTAPERTURECTL ;
 int AMD64_GARTEN ;
 int AMD_NB_GART ;
 int amd_nb_has_feature (int ) ;
 int amd_nb_num () ;
 TYPE_1__* node_to_amd_nb (int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void amd64_cleanup(void)
{
 u32 tmp;
 int i;

 if (!amd_nb_has_feature(AMD_NB_GART))
  return;

 for (i = 0; i < amd_nb_num(); i++) {
  struct pci_dev *dev = node_to_amd_nb(i)->misc;

  pci_read_config_dword(dev, AMD64_GARTAPERTURECTL, &tmp);
  tmp &= ~AMD64_GARTEN;
  pci_write_config_dword(dev, AMD64_GARTAPERTURECTL, tmp);
 }
}
