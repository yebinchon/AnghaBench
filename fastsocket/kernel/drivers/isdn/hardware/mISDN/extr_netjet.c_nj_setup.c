
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tiger_hw {int base; int base_s; int isac; int name; int pdev; } ;


 int ASSIGN_FUNC (int ,int ,int ) ;
 int EIO ;
 int ISAC ;
 int nj ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int pr_info (char*,int ,int,int ) ;
 int request_region (int,int,int ) ;

__attribute__((used)) static int
nj_setup(struct tiger_hw *card)
{
 card->base = pci_resource_start(card->pdev, 0);
 card->base_s = pci_resource_len(card->pdev, 0);
 if (!request_region(card->base, card->base_s, card->name)) {
  pr_info("%s: NETjet config port %#x-%#x already in use\n",
   card->name, card->base,
   (u32)(card->base + card->base_s - 1));
  card->base_s = 0;
  return -EIO;
 }
 ASSIGN_FUNC(nj, ISAC, card->isac);
 return 0;
}
