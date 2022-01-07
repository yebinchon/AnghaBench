
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dev; } ;


 int dev_attr_test ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void mmc_test_remove(struct mmc_card *card)
{
 device_remove_file(&card->dev, &dev_attr_test);
}
