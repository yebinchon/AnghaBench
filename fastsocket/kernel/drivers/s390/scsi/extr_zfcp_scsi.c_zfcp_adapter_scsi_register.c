
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zfcp_adapter {TYPE_2__* scsi_host; TYPE_5__* ccw_device; } ;
struct ccw_dev_id {int devno; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int max_id; int max_lun; int max_cmd_len; unsigned long* hostdata; int transportt; int unique_id; scalar_t__ max_channel; } ;
struct TYPE_6__ {int scsi_transport_template; int scsi_host_template; } ;


 int EIO ;
 int ccw_device_get_id (TYPE_5__*,struct ccw_dev_id*) ;
 int dev_err (int *,char*) ;
 scalar_t__ scsi_add_host (TYPE_2__*,int *) ;
 TYPE_2__* scsi_host_alloc (int *,int) ;
 int scsi_host_put (TYPE_2__*) ;
 TYPE_1__ zfcp_data ;

int zfcp_adapter_scsi_register(struct zfcp_adapter *adapter)
{
 struct ccw_dev_id dev_id;

 if (adapter->scsi_host)
  return 0;

 ccw_device_get_id(adapter->ccw_device, &dev_id);

 adapter->scsi_host = scsi_host_alloc(&zfcp_data.scsi_host_template,
          sizeof (struct zfcp_adapter *));
 if (!adapter->scsi_host) {
  dev_err(&adapter->ccw_device->dev,
   "Registering the FCP device with the "
   "SCSI stack failed\n");
  return -EIO;
 }


 adapter->scsi_host->max_id = 1;
 adapter->scsi_host->max_lun = 1;
 adapter->scsi_host->max_channel = 0;
 adapter->scsi_host->unique_id = dev_id.devno;
 adapter->scsi_host->max_cmd_len = 16;
 adapter->scsi_host->transportt = zfcp_data.scsi_transport_template;

 adapter->scsi_host->hostdata[0] = (unsigned long) adapter;

 if (scsi_add_host(adapter->scsi_host, &adapter->ccw_device->dev)) {
  scsi_host_put(adapter->scsi_host);
  return -EIO;
 }

 return 0;
}
