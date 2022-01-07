
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dscc4_pci_priv {int dev; struct dscc4_pci_priv* root; } ;
struct dscc4_dev_priv {int dev; struct dscc4_dev_priv* root; } ;


 int dev_per_card ;
 int dscc4_to_dev (struct dscc4_pci_priv*) ;
 int free_netdev (int ) ;
 int kfree (struct dscc4_pci_priv*) ;
 struct dscc4_pci_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int unregister_hdlc_device (int ) ;

__attribute__((used)) static void dscc4_free1(struct pci_dev *pdev)
{
 struct dscc4_pci_priv *ppriv;
 struct dscc4_dev_priv *root;
 int i;

 ppriv = pci_get_drvdata(pdev);
 root = ppriv->root;

 for (i = 0; i < dev_per_card; i++)
  unregister_hdlc_device(dscc4_to_dev(root + i));

 pci_set_drvdata(pdev, ((void*)0));

 for (i = 0; i < dev_per_card; i++)
  free_netdev(root[i].dev);
 kfree(root);
 kfree(ppriv);
}
