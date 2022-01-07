
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_status_queue {int size; struct ipw2100_status* drv; int nic; } ;
struct ipw2100_status {int dummy; } ;
struct ipw2100_priv {int pci_dev; struct ipw2100_status_queue status_queue; } ;


 int ENOMEM ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_DEBUG_WARNING (char*) ;
 int memset (struct ipw2100_status*,int ,int) ;
 scalar_t__ pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int status_queue_allocate(struct ipw2100_priv *priv, int entries)
{
 struct ipw2100_status_queue *q = &priv->status_queue;

 IPW_DEBUG_INFO("enter\n");

 q->size = entries * sizeof(struct ipw2100_status);
 q->drv =
     (struct ipw2100_status *)pci_alloc_consistent(priv->pci_dev,
         q->size, &q->nic);
 if (!q->drv) {
  IPW_DEBUG_WARNING("Can not allocate status queue.\n");
  return -ENOMEM;
 }

 memset(q->drv, 0, q->size);

 IPW_DEBUG_INFO("exit\n");

 return 0;
}
