
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {int save; int ctrl; } ;
struct TYPE_4__ {int save; int ctrl; } ;
struct lpc_ich_priv {TYPE_1__ gpio; TYPE_2__ acpi; } ;


 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void lpc_ich_restore_config_space(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);

 if (priv->acpi.save >= 0) {
  pci_write_config_byte(dev, priv->acpi.ctrl, priv->acpi.save);
  priv->acpi.save = -1;
 }

 if (priv->gpio.save >= 0) {
  pci_write_config_byte(dev, priv->gpio.ctrl, priv->gpio.save);
  priv->gpio.save = -1;
 }
}
