
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmscsi_win8_extension {int dummy; } ;
struct storvsc_device {int destroy; int open_sub_channel; int target_id; int path_id; int port_number; struct Scsi_Host* host; struct hv_device* device; int waiting_to_drain; } ;
struct hv_vmbus_device_id {scalar_t__ driver_data; } ;
struct hv_host_device {int target; int path; struct hv_device* dev; int port; } ;
struct TYPE_2__ {int* b; } ;
struct hv_device {TYPE_1__ dev_instance; int device; } ;
struct Scsi_Host {int max_cmd_len; scalar_t__ max_channel; int max_id; int max_lun; int host_no; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IDE_GUID ;
 int POST_WIN7_STORVSC_SENSE_BUFFER_SIZE ;
 int PRE_WIN8_STORVSC_SENSE_BUFFER_SIZE ;
 scalar_t__ STORVSC_MAX_CHANNELS ;
 int STORVSC_MAX_CMD_LEN ;
 int STORVSC_MAX_LUNS_PER_TARGET ;
 int STORVSC_MAX_TARGETS ;
 scalar_t__ VERSION_WIN8 ;
 int VMSTOR_WIN7_MAJOR ;
 int VMSTOR_WIN7_MINOR ;
 int VMSTOR_WIN8_MAJOR ;
 int VMSTOR_WIN8_MINOR ;
 int hv_set_drvdata (struct hv_device*,struct storvsc_device*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct storvsc_device*) ;
 struct storvsc_device* kzalloc (int,int ) ;
 int memset (struct hv_host_device*,int ,int) ;
 int scsi_add_device (struct Scsi_Host*,int ,int,int ) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 int scsi_driver ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int sense_buffer_size ;
 struct hv_host_device* shost_priv (struct Scsi_Host*) ;
 int storvsc_connect_to_vsp (struct hv_device*,int ) ;
 int storvsc_dev_remove (struct hv_device*) ;
 int storvsc_ringbuffer_size ;
 scalar_t__ vmbus_proto_version ;
 int vmscsi_size_delta ;
 int vmstor_current_major ;
 int vmstor_current_minor ;

__attribute__((used)) static int storvsc_probe(struct hv_device *device,
   const struct hv_vmbus_device_id *dev_id)
{
 int ret;
 struct Scsi_Host *host;
 struct hv_host_device *host_dev;
 bool dev_is_ide = ((dev_id->driver_data == IDE_GUID) ? 1 : 0);
 int target = 0;
 struct storvsc_device *stor_device;






 if (vmbus_proto_version == VERSION_WIN8) {
  sense_buffer_size = POST_WIN7_STORVSC_SENSE_BUFFER_SIZE;
  vmscsi_size_delta = 0;
  vmstor_current_major = VMSTOR_WIN8_MAJOR;
  vmstor_current_minor = VMSTOR_WIN8_MINOR;
 } else {
  sense_buffer_size = PRE_WIN8_STORVSC_SENSE_BUFFER_SIZE;
  vmscsi_size_delta = sizeof(struct vmscsi_win8_extension);
  vmstor_current_major = VMSTOR_WIN7_MAJOR;
  vmstor_current_minor = VMSTOR_WIN7_MINOR;
 }


 host = scsi_host_alloc(&scsi_driver,
          sizeof(struct hv_host_device));
 if (!host)
  return -ENOMEM;

 host_dev = shost_priv(host);
 memset(host_dev, 0, sizeof(struct hv_host_device));

 host_dev->port = host->host_no;
 host_dev->dev = device;


 stor_device = kzalloc(sizeof(struct storvsc_device), GFP_KERNEL);
 if (!stor_device) {
  ret = -ENOMEM;
  goto err_out0;
 }

 stor_device->destroy = 0;
 stor_device->open_sub_channel = 0;
 init_waitqueue_head(&stor_device->waiting_to_drain);
 stor_device->device = device;
 stor_device->host = host;
 hv_set_drvdata(device, stor_device);

 stor_device->port_number = host->host_no;
 ret = storvsc_connect_to_vsp(device, storvsc_ringbuffer_size);
 if (ret)
  goto err_out1;

 host_dev->path = stor_device->path_id;
 host_dev->target = stor_device->target_id;


 host->max_lun = STORVSC_MAX_LUNS_PER_TARGET;

 host->max_id = STORVSC_MAX_TARGETS;

 host->max_channel = STORVSC_MAX_CHANNELS - 1;

 host->max_cmd_len = STORVSC_MAX_CMD_LEN;


 ret = scsi_add_host(host, &device->device);
 if (ret != 0)
  goto err_out2;

 if (!dev_is_ide) {
  scsi_scan_host(host);
 } else {
  target = (device->dev_instance.b[5] << 8 |
    device->dev_instance.b[4]);
  ret = scsi_add_device(host, 0, target, 0);
  if (ret) {
   scsi_remove_host(host);
   goto err_out2;
  }
 }
 return 0;

err_out2:






 storvsc_dev_remove(device);
 goto err_out0;

err_out1:
 kfree(stor_device);

err_out0:
 scsi_host_put(host);
 return ret;
}
