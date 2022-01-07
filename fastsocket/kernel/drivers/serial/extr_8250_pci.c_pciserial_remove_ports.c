
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int nr; int dev; int ** remapped_bar; int * line; } ;
struct pci_serial_quirk {int (* exit ) (int ) ;} ;


 int PCI_NUM_BAR_RESOURCES ;
 struct pci_serial_quirk* find_quirk (int ) ;
 int iounmap (int *) ;
 int kfree (struct serial_private*) ;
 int serial8250_unregister_port (int ) ;
 int stub1 (int ) ;

void pciserial_remove_ports(struct serial_private *priv)
{
 struct pci_serial_quirk *quirk;
 int i;

 for (i = 0; i < priv->nr; i++)
  serial8250_unregister_port(priv->line[i]);

 for (i = 0; i < PCI_NUM_BAR_RESOURCES; i++) {
  if (priv->remapped_bar[i])
   iounmap(priv->remapped_bar[i]);
  priv->remapped_bar[i] = ((void*)0);
 }




 quirk = find_quirk(priv->dev);
 if (quirk->exit)
  quirk->exit(priv->dev);

 kfree(priv);
}
