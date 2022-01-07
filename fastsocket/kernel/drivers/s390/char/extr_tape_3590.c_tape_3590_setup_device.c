
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {struct tape_3590_rdc_data* discdata; } ;
struct TYPE_2__ {int capability; } ;
struct tape_3590_rdc_data {int* data; TYPE_1__ crypt_info; int read_back_op; } ;
struct tape_3590_disc_data {int* data; TYPE_1__ crypt_info; int read_back_op; } ;


 int DBF_EVENT (int,char*) ;
 int DBF_LH (int,char*,...) ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int READ_PREVIOUS ;
 int TAPE390_CRYPT_SUPPORTED_MASK ;
 int kfree (struct tape_3590_rdc_data*) ;
 struct tape_3590_rdc_data* kmalloc (int,int) ;
 struct tape_3590_rdc_data* kzalloc (int,int) ;
 int tape_3590_read_dev_chars (struct tape_device*,struct tape_3590_rdc_data*) ;
 int tape_3590_sense_medium (struct tape_device*) ;
 int tape_3592_disable_crypt (struct tape_device*) ;
 int tape_std_assign (struct tape_device*) ;

__attribute__((used)) static int
tape_3590_setup_device(struct tape_device *device)
{
 int rc;
 struct tape_3590_disc_data *data;
 struct tape_3590_rdc_data *rdc_data;

 DBF_EVENT(6, "3590 device setup\n");
 data = kzalloc(sizeof(struct tape_3590_disc_data), GFP_KERNEL | GFP_DMA);
 if (data == ((void*)0))
  return -ENOMEM;
 data->read_back_op = READ_PREVIOUS;
 device->discdata = data;

 rdc_data = kmalloc(sizeof(*rdc_data), GFP_KERNEL | GFP_DMA);
 if (!rdc_data) {
  rc = -ENOMEM;
  goto fail_kmalloc;
 }
 rc = tape_3590_read_dev_chars(device, rdc_data);
 if (rc) {
  DBF_LH(3, "Read device characteristics failed!\n");
  goto fail_rdc_data;
 }
 rc = tape_std_assign(device);
 if (rc)
  goto fail_rdc_data;
 if (rdc_data->data[31] == 0x13) {
  data->crypt_info.capability |= TAPE390_CRYPT_SUPPORTED_MASK;
  tape_3592_disable_crypt(device);
 } else {
  DBF_EVENT(6, "Device has NO crypto support\n");
 }

 rc = tape_3590_sense_medium(device);
 if (rc) {
  DBF_LH(3, "3590 medium sense returned %d\n", rc);
  goto fail_rdc_data;
 }
 return 0;

fail_rdc_data:
 kfree(rdc_data);
fail_kmalloc:
 kfree(data);
 return rc;
}
