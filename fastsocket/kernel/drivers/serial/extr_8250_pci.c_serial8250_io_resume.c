
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct serial_private* pci_get_drvdata (struct pci_dev*) ;
 int pciserial_resume_ports (struct serial_private*) ;

__attribute__((used)) static void serial8250_io_resume(struct pci_dev *dev)
{
 struct serial_private *priv = pci_get_drvdata(dev);

 if (priv)
  pciserial_resume_ports(priv);
}
