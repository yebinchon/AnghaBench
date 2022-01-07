
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; scalar_t__ data; } ;
typedef TYPE_1__ tracktype ;
struct cdrom_device_ops {int (* drive_status ) (struct cdrom_device_info*,int ) ;int (* tray_move ) (struct cdrom_device_info*,int ) ;int (* open ) (struct cdrom_device_info*,int ) ;int (* lock_door ) (struct cdrom_device_info*,int) ;} ;
struct cdrom_device_info {int options; struct cdrom_device_ops* ops; } ;


 int CDC_CLOSE_TRAY ;
 int CDC_LOCK ;
 int CDO_AUTO_CLOSE ;
 int CDO_CHECK_TYPE ;
 int CDO_LOCK ;
 scalar_t__ CDROM_CAN (int ) ;
 int CDSL_CURRENT ;
 int CDS_DISC_OK ;
 int CDS_NO_DISC ;
 int CDS_TRAY_OPEN ;
 int CD_OPEN ;
 int CD_WARNING ;
 int EMEDIUMTYPE ;
 int ENOMEDIUM ;
 int cdinfo (int ,char*,...) ;
 int cdrom_count_tracks (struct cdrom_device_info*,TYPE_1__*) ;
 int current ;
 int stub1 (struct cdrom_device_info*,int ) ;
 int stub2 (struct cdrom_device_info*,int ) ;
 int stub3 (struct cdrom_device_info*,int ) ;
 int stub4 (struct cdrom_device_info*,int ) ;
 int stub5 (struct cdrom_device_info*,int ) ;
 int stub6 (struct cdrom_device_info*,int) ;
 int stub7 (struct cdrom_device_info*,int) ;
 scalar_t__ task_pid_nr (int ) ;

__attribute__((used)) static
int open_for_data(struct cdrom_device_info * cdi)
{
 int ret;
 struct cdrom_device_ops *cdo = cdi->ops;
 tracktype tracks;
 cdinfo(CD_OPEN, "entering open_for_data\n");


 if (cdo->drive_status != ((void*)0)) {
  ret = cdo->drive_status(cdi, CDSL_CURRENT);
  cdinfo(CD_OPEN, "drive_status=%d\n", ret);
  if (ret == CDS_TRAY_OPEN) {
   cdinfo(CD_OPEN, "the tray is open...\n");

   if (CDROM_CAN(CDC_CLOSE_TRAY) &&
       cdi->options & CDO_AUTO_CLOSE) {
    cdinfo(CD_OPEN, "trying to close the tray.\n");
    ret=cdo->tray_move(cdi,0);
    if (ret) {
     cdinfo(CD_OPEN, "bummer. tried to close the tray but failed.\n");





     ret=-ENOMEDIUM;
     goto clean_up_and_return;
    }
   } else {
    cdinfo(CD_OPEN, "bummer. this drive can't close the tray.\n");
    ret=-ENOMEDIUM;
    goto clean_up_and_return;
   }

   ret = cdo->drive_status(cdi, CDSL_CURRENT);
   if ((ret == CDS_NO_DISC) || (ret==CDS_TRAY_OPEN)) {
    cdinfo(CD_OPEN, "bummer. the tray is still not closed.\n");
    cdinfo(CD_OPEN, "tray might not contain a medium.\n");
    ret=-ENOMEDIUM;
    goto clean_up_and_return;
   }
   cdinfo(CD_OPEN, "the tray is now closed.\n");
  }

  ret = cdo->drive_status(cdi, CDSL_CURRENT);
  if (ret!=CDS_DISC_OK) {
   ret = -ENOMEDIUM;
   goto clean_up_and_return;
  }
 }
 cdrom_count_tracks(cdi, &tracks);
 if (tracks.error == CDS_NO_DISC) {
  cdinfo(CD_OPEN, "bummer. no disc.\n");
  ret=-ENOMEDIUM;
  goto clean_up_and_return;
 }


 if (tracks.data==0) {
  if (cdi->options & CDO_CHECK_TYPE) {


      cdinfo(CD_OPEN, "bummer. wrong media type.\n");
      cdinfo(CD_WARNING, "pid %d must open device O_NONBLOCK!\n",
     (unsigned int)task_pid_nr(current));
      ret=-EMEDIUMTYPE;
      goto clean_up_and_return;
  }
  else {
      cdinfo(CD_OPEN, "wrong media type, but CDO_CHECK_TYPE not set.\n");
  }
 }

 cdinfo(CD_OPEN, "all seems well, opening the device.\n");


 ret = cdo->open(cdi, 0);
 cdinfo(CD_OPEN, "opening the device gave me %d.\n", ret);



 if (ret) {
  cdinfo(CD_OPEN, "open device failed.\n");
  goto clean_up_and_return;
 }
 if (CDROM_CAN(CDC_LOCK) && (cdi->options & CDO_LOCK)) {
   cdo->lock_door(cdi, 1);
   cdinfo(CD_OPEN, "door locked.\n");
 }
 cdinfo(CD_OPEN, "device opened successfully.\n");
 return ret;






clean_up_and_return:
 cdinfo(CD_OPEN, "open failed.\n");
 if (CDROM_CAN(CDC_LOCK) && cdi->options & CDO_LOCK) {
   cdo->lock_door(cdi, 0);
   cdinfo(CD_OPEN, "door unlocked.\n");
 }
 return ret;
}
