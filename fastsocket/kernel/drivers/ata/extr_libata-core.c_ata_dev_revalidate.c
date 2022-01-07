
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ata_device {scalar_t__ n_sectors; scalar_t__ n_native_sectors; unsigned int class; } ;


 unsigned int ATA_DEV_ATA ;
 unsigned int ATA_DEV_ATAPI ;
 unsigned int ATA_DEV_SEMB ;
 int ENODEV ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 scalar_t__ ata_class_enabled (unsigned int) ;
 int ata_dev_configure (struct ata_device*) ;
 int ata_dev_enabled (struct ata_device*) ;
 int ata_dev_printk (struct ata_device*,int ,char*,...) ;
 int ata_dev_reread_id (struct ata_device*,unsigned int) ;

int ata_dev_revalidate(struct ata_device *dev, unsigned int new_class,
         unsigned int readid_flags)
{
 u64 n_sectors = dev->n_sectors;
 u64 n_native_sectors = dev->n_native_sectors;
 int rc;

 if (!ata_dev_enabled(dev))
  return -ENODEV;


 if (ata_class_enabled(new_class) &&
     new_class != ATA_DEV_ATA &&
     new_class != ATA_DEV_ATAPI &&
     new_class != ATA_DEV_SEMB) {
  ata_dev_printk(dev, KERN_INFO, "class mismatch %u != %u\n",
          dev->class, new_class);
  rc = -ENODEV;
  goto fail;
 }


 rc = ata_dev_reread_id(dev, readid_flags);
 if (rc)
  goto fail;


 rc = ata_dev_configure(dev);
 if (rc)
  goto fail;


 if (dev->class == ATA_DEV_ATA && n_sectors &&
     dev->n_sectors != n_sectors) {
  ata_dev_printk(dev, KERN_WARNING, "n_sectors mismatch "
          "%llu != %llu\n",
          (unsigned long long)n_sectors,
          (unsigned long long)dev->n_sectors);





  if (dev->n_native_sectors == n_native_sectors &&
      dev->n_sectors > n_sectors &&
      dev->n_sectors == n_native_sectors) {
   ata_dev_printk(dev, KERN_WARNING,
           "new n_sectors matches native, probably "
           "late HPA unlock, continuing\n");

   dev->n_sectors = n_sectors;
  } else {

   dev->n_native_sectors = n_native_sectors;
   dev->n_sectors = n_sectors;
   rc = -ENODEV;
   goto fail;
  }
 }

 return 0;

 fail:
 ata_dev_printk(dev, KERN_ERR, "revalidation failed (errno=%d)\n", rc);
 return rc;
}
