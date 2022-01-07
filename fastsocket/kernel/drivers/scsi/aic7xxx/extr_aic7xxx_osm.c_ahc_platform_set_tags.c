
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct scsi_device {int dummy; } ;
struct ahc_softc {int dummy; } ;
struct ahc_linux_device {int flags; int active; int openings; scalar_t__ maxtags; int qfrozen; } ;
struct ahc_devinfo {int dummy; } ;
typedef int ahc_queue_alg ;


 int AHC_DEV_FREEZE_TIL_EMPTY ;
 int AHC_DEV_PERIODIC_OTAG ;





 int MSG_ORDERED_TAG ;
 int MSG_SIMPLE_TAG ;
 scalar_t__ ahc_linux_user_tagdepth (struct ahc_softc*,struct ahc_devinfo*) ;
 scalar_t__ aic7xxx_periodic_otag ;
 int scsi_activate_tcq (struct scsi_device*,int) ;
 int scsi_deactivate_tcq (struct scsi_device*,int) ;
 int scsi_set_tag_type (struct scsi_device*,int ) ;
 struct ahc_linux_device* scsi_transport_device_data (struct scsi_device*) ;

void
ahc_platform_set_tags(struct ahc_softc *ahc, struct scsi_device *sdev,
        struct ahc_devinfo *devinfo, ahc_queue_alg alg)
{
 struct ahc_linux_device *dev;
 int was_queuing;
 int now_queuing;

 if (sdev == ((void*)0))
  return;
 dev = scsi_transport_device_data(sdev);

 was_queuing = dev->flags & (132|131);
 switch (alg) {
 default:
 case 129:
  now_queuing = 0;
  break;
 case 130:
  now_queuing = 132;
  break;
 case 128:
  now_queuing = 131;
  break;
 }
 if ((dev->flags & AHC_DEV_FREEZE_TIL_EMPTY) == 0
  && (was_queuing != now_queuing)
  && (dev->active != 0)) {
  dev->flags |= AHC_DEV_FREEZE_TIL_EMPTY;
  dev->qfrozen++;
 }

 dev->flags &= ~(132|131|AHC_DEV_PERIODIC_OTAG);
 if (now_queuing) {
  u_int usertags;

  usertags = ahc_linux_user_tagdepth(ahc, devinfo);
  if (!was_queuing) {





   dev->maxtags = usertags;
   dev->openings = dev->maxtags - dev->active;
  }
  if (dev->maxtags == 0) {



   dev->openings = 1;
  } else if (alg == 128) {
   dev->flags |= 131;
   if (aic7xxx_periodic_otag != 0)
    dev->flags |= AHC_DEV_PERIODIC_OTAG;
  } else
   dev->flags |= 132;
 } else {

  dev->maxtags = 0;
  dev->openings = 1 - dev->active;
 }
 switch ((dev->flags & (132|131))) {
 case 132:
  scsi_set_tag_type(sdev, MSG_SIMPLE_TAG);
  scsi_activate_tcq(sdev, dev->openings + dev->active);
  break;
 case 131:
  scsi_set_tag_type(sdev, MSG_ORDERED_TAG);
  scsi_activate_tcq(sdev, dev->openings + dev->active);
  break;
 default:






  scsi_deactivate_tcq(sdev, 2);
  break;
 }
}
