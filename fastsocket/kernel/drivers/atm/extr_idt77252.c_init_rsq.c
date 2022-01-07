
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsq_entry {scalar_t__ word_4; } ;
struct TYPE_2__ {unsigned long paddr; struct rsq_entry* base; struct rsq_entry* last; struct rsq_entry* next; } ;
struct idt77252_dev {int name; TYPE_1__ rsq; int pcidev; } ;


 int IPRINTK (char*,int ,unsigned long,int ,...) ;
 int RSQSIZE ;
 int RSQ_NUM_ENTRIES ;
 int SAR_REG_RSQB ;
 int SAR_REG_RSQH ;
 int SAR_REG_RSQT ;
 int memset (struct rsq_entry*,int ,int ) ;
 struct rsq_entry* pci_alloc_consistent (int ,int ,unsigned long*) ;
 int printk (char*,int ) ;
 int readl (int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int
init_rsq(struct idt77252_dev *card)
{
 struct rsq_entry *rsqe;

 card->rsq.base = pci_alloc_consistent(card->pcidev, RSQSIZE,
           &card->rsq.paddr);
 if (card->rsq.base == ((void*)0)) {
  printk("%s: can't allocate RSQ.\n", card->name);
  return -1;
 }
 memset(card->rsq.base, 0, RSQSIZE);

 card->rsq.last = card->rsq.base + RSQ_NUM_ENTRIES - 1;
 card->rsq.next = card->rsq.last;
 for (rsqe = card->rsq.base; rsqe <= card->rsq.last; rsqe++)
  rsqe->word_4 = 0;

 writel((unsigned long) card->rsq.last - (unsigned long) card->rsq.base,
        SAR_REG_RSQH);
 writel(card->rsq.paddr, SAR_REG_RSQB);

 IPRINTK("%s: RSQ base at 0x%lx (0x%x).\n", card->name,
  (unsigned long) card->rsq.base,
  readl(SAR_REG_RSQB));
 IPRINTK("%s: RSQ head = 0x%x, base = 0x%x, tail = 0x%x.\n",
  card->name,
  readl(SAR_REG_RSQH),
  readl(SAR_REG_RSQB),
  readl(SAR_REG_RSQT));

 return 0;
}
