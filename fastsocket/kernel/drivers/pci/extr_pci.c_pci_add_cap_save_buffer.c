
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {char cap_nr; unsigned int size; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pci_cap_saved_state* kzalloc (int,int ) ;
 int pci_add_saved_cap (struct pci_dev*,struct pci_cap_saved_state*) ;
 int pci_find_capability (struct pci_dev*,char) ;

__attribute__((used)) static int pci_add_cap_save_buffer(
 struct pci_dev *dev, char cap, unsigned int size)
{
 int pos;
 struct pci_cap_saved_state *save_state;

 pos = pci_find_capability(dev, cap);
 if (pos <= 0)
  return 0;

 save_state = kzalloc(sizeof(*save_state) + size, GFP_KERNEL);
 if (!save_state)
  return -ENOMEM;

 save_state->cap.cap_nr = cap;
 save_state->cap.size = size;
 pci_add_saved_cap(dev, save_state);

 return 0;
}
