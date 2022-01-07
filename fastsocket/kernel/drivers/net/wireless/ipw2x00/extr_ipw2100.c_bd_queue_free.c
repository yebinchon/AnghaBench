
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int pci_dev; } ;
struct ipw2100_bd_queue {int * drv; int nic; int size; } ;


 int IPW_DEBUG_INFO (char*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void bd_queue_free(struct ipw2100_priv *priv, struct ipw2100_bd_queue *q)
{
 IPW_DEBUG_INFO("enter\n");

 if (!q)
  return;

 if (q->drv) {
  pci_free_consistent(priv->pci_dev, q->size, q->drv, q->nic);
  q->drv = ((void*)0);
 }

 IPW_DEBUG_INFO("exit\n");
}
