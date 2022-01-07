
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pcmcia_device {struct ata_pcmcia_info* priv; struct device dev; } ;
struct ata_pcmcia_info {scalar_t__ ndev; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* dev_get_drvdata (struct device*) ;
 int kfree (struct ata_pcmcia_info*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void pcmcia_remove_one(struct pcmcia_device *pdev)
{
 struct ata_pcmcia_info *info = pdev->priv;
 struct device *dev = &pdev->dev;

 if (info != ((void*)0)) {

  if (info->ndev) {
   struct ata_host *host = dev_get_drvdata(dev);
   ata_host_detach(host);
  }
  info->ndev = 0;
  pdev->priv = ((void*)0);
 }
 pcmcia_disable_device(pdev);
 kfree(info);
}
