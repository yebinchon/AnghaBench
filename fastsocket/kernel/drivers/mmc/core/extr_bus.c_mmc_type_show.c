
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EFAULT ;




 struct mmc_card* dev_to_mmc_card (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t mmc_type_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct mmc_card *card = dev_to_mmc_card(dev);

 switch (card->type) {
 case 131:
  return sprintf(buf, "MMC\n");
 case 130:
  return sprintf(buf, "SD\n");
 case 129:
  return sprintf(buf, "SDIO\n");
 case 128:
  return sprintf(buf, "SDcombo\n");
 default:
  return -EFAULT;
 }
}
