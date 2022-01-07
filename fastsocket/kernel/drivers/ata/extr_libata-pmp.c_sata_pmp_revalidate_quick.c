
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ata_device {scalar_t__* gscr; int link; } ;


 int EIO ;
 int KERN_ERR ;
 size_t SATA_PMP_GSCR_PROD_ID ;
 int ata_dev_printk (struct ata_device*,int ,char*,...) ;
 unsigned int sata_pmp_read (int ,size_t,scalar_t__*) ;

__attribute__((used)) static int sata_pmp_revalidate_quick(struct ata_device *dev)
{
 unsigned int err_mask;
 u32 prod_id;

 err_mask = sata_pmp_read(dev->link, SATA_PMP_GSCR_PROD_ID, &prod_id);
 if (err_mask) {
  ata_dev_printk(dev, KERN_ERR, "failed to read PMP product ID "
          "(Emask=0x%x)\n", err_mask);
  return -EIO;
 }

 if (prod_id != dev->gscr[SATA_PMP_GSCR_PROD_ID]) {
  ata_dev_printk(dev, KERN_ERR, "PMP product ID mismatch\n");

  return -EIO;
 }

 return 0;
}
