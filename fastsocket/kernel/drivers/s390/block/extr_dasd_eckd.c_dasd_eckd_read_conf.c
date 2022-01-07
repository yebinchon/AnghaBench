
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_uid {char* vduit; char* vendor; char* serial; int ssid; int real_unit_addr; } ;
struct dasd_path {int opm; int npm; int ppm; } ;
struct dasd_eckd_private {void* conf_data; int conf_len; struct dasd_uid uid; } ;
struct dasd_device {TYPE_1__* cdev; struct dasd_path path_data; scalar_t__ private; } ;
typedef int print_path_uid ;
typedef int print_device_uid ;
typedef int __u8 ;
struct TYPE_3__ {int dev; } ;


 int DASD_ECKD_RCD_DATA_SIZE ;
 int DBF_EVENT_DEVID (int ,TYPE_1__*,char*,...) ;
 int DBF_WARNING ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ccw_device_get_path_mask (TYPE_1__*) ;
 scalar_t__ dasd_eckd_compare_path_uid (struct dasd_device*,struct dasd_eckd_private*) ;
 int dasd_eckd_generate_uid (struct dasd_device*) ;
 scalar_t__ dasd_eckd_identify_conf_parts (struct dasd_eckd_private*) ;
 int dasd_eckd_path_access (void*,int) ;
 int dasd_eckd_read_conf_lpm (struct dasd_device*,void**,int*,int) ;
 int dev_err (int *,char*,int,char*,char*) ;
 int kfree (void*) ;
 int snprintf (char*,int,char*,char*,char*,int,int,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int dasd_eckd_read_conf(struct dasd_device *device)
{
 void *conf_data;
 int conf_len, conf_data_saved;
 int rc, path_err;
 __u8 lpm, opm;
 struct dasd_eckd_private *private, path_private;
 struct dasd_path *path_data;
 struct dasd_uid *uid;
 char print_path_uid[60], print_device_uid[60];

 private = (struct dasd_eckd_private *) device->private;
 path_data = &device->path_data;
 opm = ccw_device_get_path_mask(device->cdev);
 conf_data_saved = 0;
 path_err = 0;

 for (lpm = 0x80; lpm; lpm>>= 1) {
  if (!(lpm & opm))
   continue;
  rc = dasd_eckd_read_conf_lpm(device, &conf_data,
          &conf_len, lpm);
  if (rc && rc != -EOPNOTSUPP) {
   DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
     "Read configuration data returned "
     "error %d", rc);
   return rc;
  }
  if (conf_data == ((void*)0)) {
   DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s",
     "No configuration data "
     "retrieved");

   path_data->opm |= lpm;
   continue;
  }

  if (!conf_data_saved) {
   kfree(private->conf_data);
   private->conf_data = conf_data;
   private->conf_len = conf_len;
   if (dasd_eckd_identify_conf_parts(private)) {
    private->conf_data = ((void*)0);
    private->conf_len = 0;
    kfree(conf_data);
    continue;
   }




   dasd_eckd_generate_uid(device);
   conf_data_saved++;
  } else {
   path_private.conf_data = conf_data;
   path_private.conf_len = DASD_ECKD_RCD_DATA_SIZE;
   if (dasd_eckd_identify_conf_parts(
        &path_private)) {
    path_private.conf_data = ((void*)0);
    path_private.conf_len = 0;
    kfree(conf_data);
    continue;
   }

   if (dasd_eckd_compare_path_uid(
        device, &path_private)) {
    uid = &path_private.uid;
    if (strlen(uid->vduit) > 0)
     snprintf(print_path_uid,
       sizeof(print_path_uid),
       "%s.%s.%04x.%02x.%s",
       uid->vendor, uid->serial,
       uid->ssid, uid->real_unit_addr,
       uid->vduit);
    else
     snprintf(print_path_uid,
       sizeof(print_path_uid),
       "%s.%s.%04x.%02x",
       uid->vendor, uid->serial,
       uid->ssid,
       uid->real_unit_addr);
    uid = &private->uid;
    if (strlen(uid->vduit) > 0)
     snprintf(print_device_uid,
       sizeof(print_device_uid),
       "%s.%s.%04x.%02x.%s",
       uid->vendor, uid->serial,
       uid->ssid, uid->real_unit_addr,
       uid->vduit);
    else
     snprintf(print_device_uid,
       sizeof(print_device_uid),
       "%s.%s.%04x.%02x",
       uid->vendor, uid->serial,
       uid->ssid,
       uid->real_unit_addr);
    dev_err(&device->cdev->dev,
     "Not all channel paths lead to "
     "the same device, path %02X leads to "
     "device %s instead of %s\n", lpm,
     print_path_uid, print_device_uid);
    path_err = -EINVAL;
    continue;
   }

   path_private.conf_data = ((void*)0);
   path_private.conf_len = 0;
  }
  switch (dasd_eckd_path_access(conf_data, conf_len)) {
  case 0x02:
   path_data->npm |= lpm;
   break;
  case 0x03:
   path_data->ppm |= lpm;
   break;
  }
  path_data->opm |= lpm;

  if (conf_data != private->conf_data)
   kfree(conf_data);
 }

 return path_err;
}
