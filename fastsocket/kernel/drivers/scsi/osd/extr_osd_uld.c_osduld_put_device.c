
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scsi_device; } ;
struct osd_uld_device {TYPE_1__ od; } ;
struct osd_dev {scalar_t__ scsi_device; TYPE_2__* file; } ;
struct TYPE_4__ {struct osd_uld_device* private_data; } ;


 int BUG_ON (int) ;
 int IS_ERR (struct osd_dev*) ;
 int fput (TYPE_2__*) ;
 int kfree (struct osd_dev*) ;

void osduld_put_device(struct osd_dev *od)
{

 if (od && !IS_ERR(od)) {
  struct osd_uld_device *oud = od->file->private_data;

  BUG_ON(od->scsi_device != oud->od.scsi_device);

  fput(od->file);
  kfree(od);
 }
}
