
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {scalar_t__ sector_buf; } ;
struct ata_link {struct ata_port* ap; } ;
struct ata_device {int gscr; struct ata_link* link; } ;
typedef int gscr ;


 unsigned int ATA_DEV_PMP ;
 int ATA_EH_REVALIDATE ;
 int DPRINTK (char*,...) ;
 int ENODEV ;
 int KERN_ERR ;
 int SATA_PMP_GSCR_DWORDS ;
 scalar_t__ ata_class_enabled (unsigned int) ;
 int ata_dev_enabled (struct ata_device*) ;
 int ata_dev_printk (struct ata_device*,int ,char*,int) ;
 int ata_eh_about_to_do (struct ata_link*,int *,int ) ;
 int ata_eh_done (struct ata_link*,int *,int ) ;
 int memcpy (int ,int *,int) ;
 int sata_pmp_configure (struct ata_device*,int ) ;
 int sata_pmp_read_gscr (struct ata_device*,int *) ;
 int sata_pmp_same_pmp (struct ata_device*,int *) ;

__attribute__((used)) static int sata_pmp_revalidate(struct ata_device *dev, unsigned int new_class)
{
 struct ata_link *link = dev->link;
 struct ata_port *ap = link->ap;
 u32 *gscr = (void *)ap->sector_buf;
 int rc;

 DPRINTK("ENTER\n");

 ata_eh_about_to_do(link, ((void*)0), ATA_EH_REVALIDATE);

 if (!ata_dev_enabled(dev)) {
  rc = -ENODEV;
  goto fail;
 }


 if (ata_class_enabled(new_class) && new_class != ATA_DEV_PMP) {
  rc = -ENODEV;
  goto fail;
 }


 rc = sata_pmp_read_gscr(dev, gscr);
 if (rc)
  goto fail;


 if (!sata_pmp_same_pmp(dev, gscr)) {
  rc = -ENODEV;
  goto fail;
 }

 memcpy(dev->gscr, gscr, sizeof(gscr[0]) * SATA_PMP_GSCR_DWORDS);

 rc = sata_pmp_configure(dev, 0);
 if (rc)
  goto fail;

 ata_eh_done(link, ((void*)0), ATA_EH_REVALIDATE);

 DPRINTK("EXIT, rc=0\n");
 return 0;

 fail:
 ata_dev_printk(dev, KERN_ERR,
         "PMP revalidation failed (errno=%d)\n", rc);
 DPRINTK("EXIT, rc=%d\n", rc);
 return rc;
}
