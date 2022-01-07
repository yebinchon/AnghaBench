
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int kobj; } ;
struct scsi_device {TYPE_2__ sdev_gendev; } ;
struct i2o_scsi_host {struct Scsi_Host* scsi_host; struct i2o_device** channel; int lun; } ;
struct TYPE_6__ {int class_id; int tid; int parent_tid; } ;
struct TYPE_4__ {int kobj; } ;
struct i2o_device {TYPE_3__ lct_data; TYPE_1__ device; struct i2o_controller* iop; } ;
struct i2o_controller {int adaptec; } ;
struct device {int dummy; } ;
struct Scsi_Host {int max_channel; scalar_t__ max_id; scalar_t__ max_lun; } ;


 int EFAULT ;



 scalar_t__ IS_ERR (struct scsi_device*) ;
 int PTR_ERR (struct scsi_device*) ;
 struct scsi_device* __scsi_add_device (struct Scsi_Host*,int,scalar_t__,scalar_t__,struct i2o_device*) ;
 int cpu_to_le64 (int ) ;
 struct i2o_device* i2o_iop_find_device (struct i2o_controller*,int ) ;
 int i2o_parm_field_get (struct i2o_device*,int,int,int*,int) ;
 struct i2o_scsi_host* i2o_scsi_get_host (struct i2o_controller*) ;
 scalar_t__ le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int) ;
 int osm_info (char*,int ,int,scalar_t__,unsigned long) ;
 int osm_warn (char*,scalar_t__,...) ;
 int scsi_remove_device (struct scsi_device*) ;
 int sysfs_create_link (int *,int *,char*) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static int i2o_scsi_probe(struct device *dev)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);
 struct i2o_controller *c = i2o_dev->iop;
 struct i2o_scsi_host *i2o_shost;
 struct Scsi_Host *scsi_host;
 struct i2o_device *parent;
 struct scsi_device *scsi_dev;
 u32 id = -1;
 u64 lun = -1;
 int channel = -1;
 int i, rc;

 i2o_shost = i2o_scsi_get_host(c);
 if (!i2o_shost)
  return -EFAULT;

 scsi_host = i2o_shost->scsi_host;

 switch (i2o_dev->lct_data.class_id) {
 case 129:
 case 130:
  break;

 case 128:
  if (i2o_parm_field_get(i2o_dev, 0x0000, 3, &id, 4))
   return -EFAULT;

  if (i2o_parm_field_get(i2o_dev, 0x0000, 4, &lun, 8))
   return -EFAULT;

  parent = i2o_iop_find_device(c, i2o_dev->lct_data.parent_tid);
  if (!parent) {
   osm_warn("can not find parent of device %03x\n",
     i2o_dev->lct_data.tid);
   return -EFAULT;
  }

  for (i = 0; i <= i2o_shost->scsi_host->max_channel; i++)
   if (i2o_shost->channel[i] == parent)
    channel = i;
  break;

 default:
  return -EFAULT;
 }

 if (channel == -1) {
  osm_warn("can not find channel of device %03x\n",
    i2o_dev->lct_data.tid);
  return -EFAULT;
 }

 if (le32_to_cpu(id) >= scsi_host->max_id) {
  osm_warn("SCSI device id (%d) >= max_id of I2O host (%d)",
    le32_to_cpu(id), scsi_host->max_id);
  return -EFAULT;
 }

 if (le64_to_cpu(lun) >= scsi_host->max_lun) {
  osm_warn("SCSI device lun (%lu) >= max_lun of I2O host (%d)",
    (long unsigned int)le64_to_cpu(lun),
    scsi_host->max_lun);
  return -EFAULT;
 }

 scsi_dev =
     __scsi_add_device(i2o_shost->scsi_host, channel, le32_to_cpu(id),
         le64_to_cpu(lun), i2o_dev);

 if (IS_ERR(scsi_dev)) {
  osm_warn("can not add SCSI device %03x\n",
    i2o_dev->lct_data.tid);
  return PTR_ERR(scsi_dev);
 }

 rc = sysfs_create_link(&i2o_dev->device.kobj,
          &scsi_dev->sdev_gendev.kobj, "scsi");
 if (rc)
  goto err;

 osm_info("device added (TID: %03x) channel: %d, id: %d, lun: %ld\n",
   i2o_dev->lct_data.tid, channel, le32_to_cpu(id),
   (long unsigned int)le64_to_cpu(lun));

 return 0;

err:
 scsi_remove_device(scsi_dev);
 return rc;
}
