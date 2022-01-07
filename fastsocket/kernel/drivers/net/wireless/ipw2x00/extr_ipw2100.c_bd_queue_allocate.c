
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int pci_dev; } ;
struct ipw2100_bd_queue {int entries; int size; struct ipw2100_bd_queue* drv; int nic; } ;
struct ipw2100_bd {int dummy; } ;


 int ENOMEM ;
 int IPW_DEBUG_INFO (char*) ;
 int memset (struct ipw2100_bd_queue*,int ,int) ;
 struct ipw2100_bd_queue* pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int bd_queue_allocate(struct ipw2100_priv *priv,
        struct ipw2100_bd_queue *q, int entries)
{
 IPW_DEBUG_INFO("enter\n");

 memset(q, 0, sizeof(struct ipw2100_bd_queue));

 q->entries = entries;
 q->size = entries * sizeof(struct ipw2100_bd);
 q->drv = pci_alloc_consistent(priv->pci_dev, q->size, &q->nic);
 if (!q->drv) {
  IPW_DEBUG_INFO
      ("can't allocate shared memory for buffer descriptors\n");
  return -ENOMEM;
 }
 memset(q->drv, 0, q->size);

 IPW_DEBUG_INFO("exit\n");

 return 0;
}
