
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct format_data_t {int start_unit; int stop_unit; int blksize; int intensity; } ;
struct dasd_device {scalar_t__ state; TYPE_3__* cdev; TYPE_2__* discipline; } ;
struct dasd_ccw_req {int memdev; } ;
struct dasd_block {int gdp; struct dasd_device* base; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct dasd_ccw_req* (* format_device ) (struct dasd_device*,struct format_data_t*) ;} ;
struct TYPE_4__ {int i_blkbits; } ;


 scalar_t__ DASD_STATE_BASIC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int ,int ,int ,int ) ;
 int DBF_NOTICE ;
 int EBUSY ;
 int EPERM ;
 int ERESTARTSYS ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 struct block_device* bdget_disk (int ,int ) ;
 int bdput (struct block_device*) ;
 int blksize_bits (int ) ;
 int dasd_sfree_request (struct dasd_ccw_req*,int ) ;
 int dasd_sleep_on_interruptible (struct dasd_ccw_req*) ;
 int dev_name (int *) ;
 int pr_err (char*,int ,int ,int) ;
 int pr_warning (char*,int ) ;
 struct dasd_ccw_req* stub1 (struct dasd_device*,struct format_data_t*) ;

__attribute__((used)) static int dasd_format(struct dasd_block *block, struct format_data_t *fdata)
{
 struct dasd_ccw_req *cqr;
 struct dasd_device *base;
 int rc;

 base = block->base;
 if (base->discipline->format_device == ((void*)0))
  return -EPERM;

 if (base->state != DASD_STATE_BASIC) {
  pr_warning("%s: The DASD cannot be formatted while it is "
      "enabled\n", dev_name(&base->cdev->dev));
  return -EBUSY;
 }

 DBF_DEV_EVENT(DBF_NOTICE, base,
        "formatting units %u to %u (%u B blocks) flags %u",
        fdata->start_unit,
        fdata->stop_unit, fdata->blksize, fdata->intensity);






 if (fdata->start_unit == 0) {
  struct block_device *bdev = bdget_disk(block->gdp, 0);
  bdev->bd_inode->i_blkbits = blksize_bits(fdata->blksize);
  bdput(bdev);
 }

 while (fdata->start_unit <= fdata->stop_unit) {
  cqr = base->discipline->format_device(base, fdata);
  if (IS_ERR(cqr))
   return PTR_ERR(cqr);
  rc = dasd_sleep_on_interruptible(cqr);
  dasd_sfree_request(cqr, cqr->memdev);
  if (rc) {
   if (rc != -ERESTARTSYS)
    pr_err("%s: Formatting unit %d failed with "
           "rc=%d\n", dev_name(&base->cdev->dev),
           fdata->start_unit, rc);
   return rc;
  }
  fdata->start_unit++;
 }
 return 0;
}
