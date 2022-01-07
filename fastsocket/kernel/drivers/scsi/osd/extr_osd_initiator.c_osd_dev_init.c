
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct osd_dev {int version; int def_timeout; struct scsi_device* scsi_device; } ;


 int BLK_DEFAULT_SG_TIMEOUT ;
 int OSD_VER2 ;
 int memset (struct osd_dev*,int ,int) ;

void osd_dev_init(struct osd_dev *osdd, struct scsi_device *scsi_device)
{
 memset(osdd, 0, sizeof(*osdd));
 osdd->scsi_device = scsi_device;
 osdd->def_timeout = BLK_DEFAULT_SG_TIMEOUT;




}
