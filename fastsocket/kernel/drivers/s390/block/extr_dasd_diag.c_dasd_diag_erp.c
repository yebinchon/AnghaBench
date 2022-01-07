
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {TYPE_2__* cdev; int flags; TYPE_1__* block; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int bp_block; } ;


 int DASD_FLAG_DEVICE_RO ;
 int dev_warn (int *,char*,...) ;
 int mdsk_init_io (struct dasd_device*,int ,int ,int *) ;
 int mdsk_term_io (struct dasd_device*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
dasd_diag_erp(struct dasd_device *device)
{
 int rc;

 mdsk_term_io(device);
 rc = mdsk_init_io(device, device->block->bp_block, 0, ((void*)0));
 if (rc == 4) {
  if (!(test_and_set_bit(DASD_FLAG_DEVICE_RO, &device->flags)))
   dev_warn(&device->cdev->dev,
     "The access mode of a DIAG device changed"
     " to read-only");
  rc = 0;
 }
 if (rc)
  dev_warn(&device->cdev->dev, "DIAG ERP failed with "
       "rc=%d\n", rc);
}
