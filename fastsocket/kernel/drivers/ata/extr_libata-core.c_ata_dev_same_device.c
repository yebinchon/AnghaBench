
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ata_device {unsigned int class; int * id; } ;
typedef int serial ;
typedef int model ;


 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 int ATA_ID_SERNO ;
 int ATA_ID_SERNO_LEN ;
 int KERN_INFO ;
 int ata_dev_printk (struct ata_device*,int ,char*,...) ;
 int ata_id_c_string (int const*,unsigned char*,int ,int) ;
 scalar_t__ strcmp (unsigned char*,unsigned char*) ;

__attribute__((used)) static int ata_dev_same_device(struct ata_device *dev, unsigned int new_class,
          const u16 *new_id)
{
 const u16 *old_id = dev->id;
 unsigned char model[2][ATA_ID_PROD_LEN + 1];
 unsigned char serial[2][ATA_ID_SERNO_LEN + 1];

 if (dev->class != new_class) {
  ata_dev_printk(dev, KERN_INFO, "class mismatch %d != %d\n",
          dev->class, new_class);
  return 0;
 }

 ata_id_c_string(old_id, model[0], ATA_ID_PROD, sizeof(model[0]));
 ata_id_c_string(new_id, model[1], ATA_ID_PROD, sizeof(model[1]));
 ata_id_c_string(old_id, serial[0], ATA_ID_SERNO, sizeof(serial[0]));
 ata_id_c_string(new_id, serial[1], ATA_ID_SERNO, sizeof(serial[1]));

 if (strcmp(model[0], model[1])) {
  ata_dev_printk(dev, KERN_INFO, "model number mismatch "
          "'%s' != '%s'\n", model[0], model[1]);
  return 0;
 }

 if (strcmp(serial[0], serial[1])) {
  ata_dev_printk(dev, KERN_INFO, "serial number mismatch "
          "'%s' != '%s'\n", serial[0], serial[1]);
  return 0;
 }

 return 1;
}
