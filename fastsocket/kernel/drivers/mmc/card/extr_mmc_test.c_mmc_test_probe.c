
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {scalar_t__ type; int dev; } ;


 int ENODEV ;
 scalar_t__ MMC_TYPE_MMC ;
 scalar_t__ MMC_TYPE_SD ;
 int dev_attr_test ;
 int dev_info (int *,char*) ;
 int device_create_file (int *,int *) ;

__attribute__((used)) static int mmc_test_probe(struct mmc_card *card)
{
 int ret;

 if ((card->type != MMC_TYPE_MMC) && (card->type != MMC_TYPE_SD))
  return -ENODEV;

 ret = device_create_file(&card->dev, &dev_attr_test);
 if (ret)
  return ret;

 dev_info(&card->dev, "Card claimed for testing.\n");

 return 0;
}
