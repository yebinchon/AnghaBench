
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int request_queue; } ;
struct TYPE_2__ {struct scsi_device* scsi_device; } ;
struct osd_uld_device {TYPE_1__ od; } ;


 int ENODEV ;
 int HZ ;
 int OSD_CAP_LEN ;
 int OSD_DEBUG (char*,struct osd_uld_device*,struct scsi_device*,int ) ;
 int OSD_ERR (char*) ;
 scalar_t__ osd_auto_detect_ver (TYPE_1__*,char*) ;
 int osd_root_object ;
 int osd_sec_init_nosec_doall_caps (char*,int *,int,int) ;
 int scsi_test_unit_ready (struct scsi_device*,int,int,int *) ;

__attribute__((used)) static int __detect_osd(struct osd_uld_device *oud)
{
 struct scsi_device *scsi_device = oud->od.scsi_device;
 char caps[OSD_CAP_LEN];
 int error;




 OSD_DEBUG("start scsi_test_unit_ready %p %p %p\n",
   oud, scsi_device, scsi_device->request_queue);
 error = scsi_test_unit_ready(scsi_device, 10*HZ, 5, ((void*)0));
 if (error)
  OSD_ERR("warning: scsi_test_unit_ready failed\n");

 osd_sec_init_nosec_doall_caps(caps, &osd_root_object, 0, 1);
 if (osd_auto_detect_ver(&oud->od, caps))
  return -ENODEV;

 return 0;
}
