
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ismt_priv {int adapter; } ;


 int SMBBAR ;
 int i2c_del_adapter (int *) ;
 struct ismt_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;

__attribute__((used)) static void ismt_remove(struct pci_dev *pdev)
{
 struct ismt_priv *priv = pci_get_drvdata(pdev);

 i2c_del_adapter(&priv->adapter);
 pci_release_region(pdev, SMBBAR);
}
