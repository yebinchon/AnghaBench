
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nozomi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_card_type ;
 int dev_attr_open_ttys ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void remove_sysfs_files(struct nozomi *dc)
{
 device_remove_file(&dc->pdev->dev, &dev_attr_card_type);
 device_remove_file(&dc->pdev->dev, &dev_attr_open_ttys);
}
