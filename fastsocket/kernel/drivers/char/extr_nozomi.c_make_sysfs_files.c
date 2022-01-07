
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nozomi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_card_type ;
 int dev_attr_open_ttys ;
 int dev_err (int *,char*) ;
 scalar_t__ device_create_file (int *,int *) ;

__attribute__((used)) static void make_sysfs_files(struct nozomi *dc)
{
 if (device_create_file(&dc->pdev->dev, &dev_attr_card_type))
  dev_err(&dc->pdev->dev,
   "Could not create sysfs file for card_type\n");
 if (device_create_file(&dc->pdev->dev, &dev_attr_open_ttys))
  dev_err(&dc->pdev->dev,
   "Could not create sysfs file for open_ttys\n");
}
