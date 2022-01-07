
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_fsl_host_priv {int hcr_base; int irq; } ;
struct of_device {int dev; } ;
struct ata_host {struct sata_fsl_host_priv* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct sata_fsl_host_priv*) ;

__attribute__((used)) static int sata_fsl_remove(struct of_device *ofdev)
{
 struct ata_host *host = dev_get_drvdata(&ofdev->dev);
 struct sata_fsl_host_priv *host_priv = host->private_data;

 ata_host_detach(host);

 dev_set_drvdata(&ofdev->dev, ((void*)0));

 irq_dispose_mapping(host_priv->irq);
 iounmap(host_priv->hcr_base);
 kfree(host_priv);

 return 0;
}
