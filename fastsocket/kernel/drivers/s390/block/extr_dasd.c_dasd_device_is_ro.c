
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag210 {int vrdclen; int vrdcvfla; int vrdcdvno; } ;
struct dasd_device {int cdev; } ;
struct ccw_dev_id {int devno; } ;
typedef int diag_data ;


 int DBF_EVENT (int ,char*,int ,int) ;
 int DBF_WARNING ;
 int MACHINE_IS_VM ;
 int ccw_device_get_id (int ,struct ccw_dev_id*) ;
 int diag210 (struct diag210*) ;
 int memset (struct diag210*,int ,int) ;

int dasd_device_is_ro(struct dasd_device *device)
{
 struct ccw_dev_id dev_id;
 struct diag210 diag_data;
 int rc;

 if (!MACHINE_IS_VM)
  return 0;
 ccw_device_get_id(device->cdev, &dev_id);
 memset(&diag_data, 0, sizeof(diag_data));
 diag_data.vrdcdvno = dev_id.devno;
 diag_data.vrdclen = sizeof(diag_data);
 rc = diag210(&diag_data);
 if (rc == 0 || rc == 2) {
  return diag_data.vrdcvfla & 0x80;
 } else {
  DBF_EVENT(DBF_WARNING, "diag210 failed for dev=%04x with rc=%d",
     dev_id.devno, rc);
  return 0;
 }
}
