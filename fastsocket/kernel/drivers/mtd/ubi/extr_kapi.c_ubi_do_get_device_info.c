
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_device_info {int cdev; int ro_mode; int min_io_size; int leb_size; int ubi_num; } ;
struct TYPE_2__ {int dev; } ;
struct ubi_device {TYPE_1__ cdev; int ro_mode; int min_io_size; int leb_size; int ubi_num; } ;



void ubi_do_get_device_info(struct ubi_device *ubi, struct ubi_device_info *di)
{
 di->ubi_num = ubi->ubi_num;
 di->leb_size = ubi->leb_size;
 di->min_io_size = ubi->min_io_size;
 di->ro_mode = ubi->ro_mode;
 di->cdev = ubi->cdev.dev;
}
