
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spiderpci_iowa_private {scalar_t__ regs; } ;
struct iowa_bus {struct spiderpci_iowa_private* private; } ;


 scalar_t__ SPIDER_PCI_DUMMY_READ ;
 int in_be32 (scalar_t__) ;
 int iosync () ;

__attribute__((used)) static void spiderpci_io_flush(struct iowa_bus *bus)
{
 struct spiderpci_iowa_private *priv;
 u32 val;

 priv = bus->private;
 val = in_be32(priv->regs + SPIDER_PCI_DUMMY_READ);
 iosync();
}
