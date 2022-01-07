
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct gendisk {int dummy; } ;
typedef int sector_t ;
struct TYPE_23__ {unsigned int block_size; int nr_blocks; int raid_level; scalar_t__ heads; scalar_t__ sectors; scalar_t__ cylinders; int busy_configuring; int rev; int model; int vendor; int serial_no; scalar_t__ device_initialized; int LunID; } ;
typedef TYPE_2__ drive_info_struct ;
struct TYPE_24__ {scalar_t__ cciss_read; TYPE_1__* pdev; int num_luns; TYPE_2__** drv; struct gendisk** gendisk; int lock; int cciss_write; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_22__ {int dev; } ;
typedef TYPE_2__ InquiryData_struct ;


 scalar_t__ CCISS_READ_10 ;
 scalar_t__ CCISS_READ_16 ;
 int CCISS_WRITE_10 ;
 int CCISS_WRITE_16 ;
 int GFP_KERNEL ;
 int MODEL_LEN ;
 int REV_LEN ;
 int VENDOR_LEN ;
 scalar_t__ cciss_add_disk (TYPE_3__*,struct gendisk*,int) ;
 int cciss_free_drive_info (TYPE_3__*,int) ;
 int cciss_free_gendisk (TYPE_3__*,int) ;
 int cciss_geometry_inquiry (TYPE_3__*,int,int,unsigned int,TYPE_2__*,TYPE_2__*) ;
 int cciss_get_device_descr (TYPE_3__*,int,int ,int ,int ) ;
 int cciss_get_serial_no (TYPE_3__*,int,int ,int) ;
 int cciss_read_capacity (TYPE_3__*,int,int*,unsigned int*) ;
 int cciss_read_capacity_16 (TYPE_3__*,int,int*,unsigned int*) ;
 int cciss_sysfs_stat_inquiry (TYPE_3__*,int,TYPE_2__*) ;
 int deregister_disk (TYPE_3__*,int,int ,int) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 TYPE_2__* kzalloc (int,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int set_capacity (struct gendisk*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cciss_update_drive_info(ctlr_info_t *h, int drv_index,
 int first_time, int via_ioctl)
{
 struct gendisk *disk;
 InquiryData_struct *inq_buff = ((void*)0);
 unsigned int block_size;
 sector_t total_size;
 unsigned long flags = 0;
 int ret = 0;
 drive_info_struct *drvinfo;


 inq_buff = kmalloc(sizeof(InquiryData_struct), GFP_KERNEL);
 drvinfo = kzalloc(sizeof(*drvinfo), GFP_KERNEL);
 if (inq_buff == ((void*)0) || drvinfo == ((void*)0))
  goto mem_msg;


 if (h->cciss_read == CCISS_READ_16) {
  cciss_read_capacity_16(h, drv_index,
   &total_size, &block_size);

 } else {
  cciss_read_capacity(h, drv_index,
        &total_size, &block_size);




  if (total_size == 0xFFFFFFFFULL) {
   cciss_read_capacity_16(h, drv_index,
   &total_size, &block_size);
   h->cciss_read = CCISS_READ_16;
   h->cciss_write = CCISS_WRITE_16;
  } else {
   h->cciss_read = CCISS_READ_10;
   h->cciss_write = CCISS_WRITE_10;
  }
 }

 cciss_geometry_inquiry(h, drv_index, total_size, block_size,
          inq_buff, drvinfo);
 drvinfo->block_size = block_size;
 drvinfo->nr_blocks = total_size + 1;

 cciss_get_device_descr(h, drv_index, drvinfo->vendor,
    drvinfo->model, drvinfo->rev);
 cciss_get_serial_no(h, drv_index, drvinfo->serial_no,
  sizeof(drvinfo->serial_no));

 memcpy(drvinfo->LunID, h->drv[drv_index]->LunID,
  sizeof(drvinfo->LunID));


 if (h->drv[drv_index]->raid_level != -1 &&
  ((memcmp(drvinfo->serial_no,
    h->drv[drv_index]->serial_no, 16) == 0) &&
  drvinfo->block_size == h->drv[drv_index]->block_size &&
  drvinfo->nr_blocks == h->drv[drv_index]->nr_blocks &&
  drvinfo->heads == h->drv[drv_index]->heads &&
  drvinfo->sectors == h->drv[drv_index]->sectors &&
  drvinfo->cylinders == h->drv[drv_index]->cylinders))

   goto freeret;







 if (h->drv[drv_index]->raid_level != -1 && drv_index != 0) {
  dev_warn(&h->pdev->dev, "disk %d has changed.\n", drv_index);
  spin_lock_irqsave(&h->lock, flags);
  h->drv[drv_index]->busy_configuring = 1;
  spin_unlock_irqrestore(&h->lock, flags);





  ret = deregister_disk(h, drv_index, 0, via_ioctl);
 }


 if (ret)
  goto freeret;





 if (h->drv[drv_index] == ((void*)0)) {
  drvinfo->device_initialized = 0;
  h->drv[drv_index] = drvinfo;
  drvinfo = ((void*)0);
 } else {

  h->drv[drv_index]->block_size = drvinfo->block_size;
  h->drv[drv_index]->nr_blocks = drvinfo->nr_blocks;
  h->drv[drv_index]->heads = drvinfo->heads;
  h->drv[drv_index]->sectors = drvinfo->sectors;
  h->drv[drv_index]->cylinders = drvinfo->cylinders;
  h->drv[drv_index]->raid_level = drvinfo->raid_level;
  memcpy(h->drv[drv_index]->serial_no, drvinfo->serial_no, 16);
  memcpy(h->drv[drv_index]->vendor, drvinfo->vendor,
   VENDOR_LEN + 1);
  memcpy(h->drv[drv_index]->model, drvinfo->model, MODEL_LEN + 1);
  memcpy(h->drv[drv_index]->rev, drvinfo->rev, REV_LEN + 1);
 }

 ++h->num_luns;
 disk = h->gendisk[drv_index];
 set_capacity(disk, h->drv[drv_index]->nr_blocks);
 cciss_sysfs_stat_inquiry(h, drv_index, h->drv[drv_index]);







 if (drv_index || first_time) {
  if (cciss_add_disk(h, disk, drv_index) != 0) {
   cciss_free_gendisk(h, drv_index);
   cciss_free_drive_info(h, drv_index);
   dev_warn(&h->pdev->dev, "could not update disk %d\n",
    drv_index);
   --h->num_luns;
  }
 }

freeret:
 kfree(inq_buff);
 kfree(drvinfo);
 return;
mem_msg:
 dev_err(&h->pdev->dev, "out of memory\n");
 goto freeret;
}
