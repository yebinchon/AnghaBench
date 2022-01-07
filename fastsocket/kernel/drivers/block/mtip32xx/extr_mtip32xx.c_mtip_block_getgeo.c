
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct driver_data {TYPE_2__* pdev; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int sector_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct driver_data* private_data; } ;


 int ENOTTY ;
 int dev_warn (int *,char*) ;
 int mtip_hw_get_capacity (struct driver_data*,int *) ;
 int sector_div (int ,int) ;

__attribute__((used)) static int mtip_block_getgeo(struct block_device *dev,
    struct hd_geometry *geo)
{
 struct driver_data *dd = dev->bd_disk->private_data;
 sector_t capacity;

 if (!dd)
  return -ENOTTY;

 if (!(mtip_hw_get_capacity(dd, &capacity))) {
  dev_warn(&dd->pdev->dev,
   "Could not get drive capacity.\n");
  return -ENOTTY;
 }

 geo->heads = 224;
 geo->sectors = 56;
 sector_div(capacity, (geo->heads * geo->sectors));
 geo->cylinders = capacity;
 return 0;
}
