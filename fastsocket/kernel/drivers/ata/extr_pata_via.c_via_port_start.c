
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_port {int dummy; } ;
struct pci_dev {int dev; } ;
struct ata_port {struct via_port* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ata_sff_port_start (struct ata_port*) ;
 struct via_port* devm_kzalloc (int *,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int via_port_start(struct ata_port *ap)
{
 struct via_port *vp;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 int ret = ata_sff_port_start(ap);
 if (ret < 0)
  return ret;

 vp = devm_kzalloc(&pdev->dev, sizeof(struct via_port), GFP_KERNEL);
 if (vp == ((void*)0))
  return -ENOMEM;
 ap->private_data = vp;
 return 0;
}
