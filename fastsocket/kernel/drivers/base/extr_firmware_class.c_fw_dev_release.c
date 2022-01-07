
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_priv {int nr_pages; struct firmware_priv* fw_id; struct firmware_priv* pages; } ;
struct device {int nr_pages; struct device* fw_id; struct device* pages; } ;


 int THIS_MODULE ;
 int __free_page (struct firmware_priv) ;
 struct firmware_priv* dev_get_drvdata (struct firmware_priv*) ;
 int kfree (struct firmware_priv*) ;
 int module_put (int ) ;

__attribute__((used)) static void fw_dev_release(struct device *dev)
{
 struct firmware_priv *fw_priv = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < fw_priv->nr_pages; i++)
  __free_page(fw_priv->pages[i]);
 kfree(fw_priv->pages);
 kfree(fw_priv->fw_id);
 kfree(fw_priv);
 kfree(dev);

 module_put(THIS_MODULE);
}
