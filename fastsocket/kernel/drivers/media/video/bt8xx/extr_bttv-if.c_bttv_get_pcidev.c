
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {struct pci_dev* pci; } ;
struct TYPE_4__ {TYPE_1__ c; } ;


 unsigned int bttv_num ;
 TYPE_2__** bttvs ;

struct pci_dev* bttv_get_pcidev(unsigned int card)
{
 if (card >= bttv_num)
  return ((void*)0);
 if (!bttvs[card])
  return ((void*)0);

 return bttvs[card]->c.pci;
}
