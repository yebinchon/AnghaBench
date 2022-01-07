
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gendisk {int disk_name; } ;
typedef int fmode_t ;
struct TYPE_7__ {int usage_count; } ;
typedef TYPE_2__ drive_info_struct ;
struct TYPE_8__ {int usage_count; TYPE_1__* pdev; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_6__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 TYPE_2__* get_drv (struct gendisk*) ;
 TYPE_3__* get_host (struct gendisk*) ;

__attribute__((used)) static int cciss_release(struct gendisk *disk, fmode_t mode)
{
 ctlr_info_t *h = get_host(disk);
 drive_info_struct *drv = get_drv(disk);
 dev_dbg(&h->pdev->dev, "cciss_release %s\n", disk->disk_name);
 drv->usage_count--;
 h->usage_count--;
 return 0;
}
