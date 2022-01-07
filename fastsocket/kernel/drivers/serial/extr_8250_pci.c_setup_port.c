
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned long iobase; unsigned long mapbase; int regshift; int * membase; int iotype; } ;
struct serial_private {int * remapped_bar; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int PCI_NUM_BAR_RESOURCES ;
 int UPIO_MEM ;
 int UPIO_PORT ;
 int ioremap_nocache (unsigned long,unsigned long) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int
setup_port(struct serial_private *priv, struct uart_port *port,
    int bar, int offset, int regshift)
{
 struct pci_dev *dev = priv->dev;
 unsigned long base, len;

 if (bar >= PCI_NUM_BAR_RESOURCES)
  return -EINVAL;

 base = pci_resource_start(dev, bar);

 if (pci_resource_flags(dev, bar) & IORESOURCE_MEM) {
  len = pci_resource_len(dev, bar);

  if (!priv->remapped_bar[bar])
   priv->remapped_bar[bar] = ioremap_nocache(base, len);
  if (!priv->remapped_bar[bar])
   return -ENOMEM;

  port->iotype = UPIO_MEM;
  port->iobase = 0;
  port->mapbase = base + offset;
  port->membase = priv->remapped_bar[bar] + offset;
  port->regshift = regshift;
 } else {
  port->iotype = UPIO_PORT;
  port->iobase = base + offset;
  port->mapbase = 0;
  port->membase = ((void*)0);
  port->regshift = 0;
 }
 return 0;
}
