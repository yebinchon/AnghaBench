
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tg3_ocir {scalar_t__ src_data_length; scalar_t__ src_hdr_length; } ;
struct tg3 {int * hwmon_dev; struct pci_dev* pdev; } ;
struct TYPE_3__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (int *) ;
 int TG3_SD_NUM_RECS ;
 int dev_err (TYPE_1__*,char*) ;
 int * hwmon_device_register (TYPE_1__*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int tg3_group ;
 int tg3_sd_scan_scratchpad (struct tg3*,struct tg3_ocir*) ;

__attribute__((used)) static void tg3_hwmon_open(struct tg3 *tp)
{
 int i, err;
 u32 size = 0;
 struct pci_dev *pdev = tp->pdev;
 struct tg3_ocir ocirs[TG3_SD_NUM_RECS];

 tg3_sd_scan_scratchpad(tp, ocirs);

 for (i = 0; i < TG3_SD_NUM_RECS; i++) {
  if (!ocirs[i].src_data_length)
   continue;

  size += ocirs[i].src_hdr_length;
  size += ocirs[i].src_data_length;
 }

 if (!size)
  return;


 err = sysfs_create_group(&pdev->dev.kobj, &tg3_group);
 if (err) {
  dev_err(&pdev->dev, "Cannot create sysfs group, aborting\n");
  return;
 }

 tp->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(tp->hwmon_dev)) {
  tp->hwmon_dev = ((void*)0);
  dev_err(&pdev->dev, "Cannot register hwmon device, aborting\n");
  sysfs_remove_group(&pdev->dev.kobj, &tg3_group);
 }
}
