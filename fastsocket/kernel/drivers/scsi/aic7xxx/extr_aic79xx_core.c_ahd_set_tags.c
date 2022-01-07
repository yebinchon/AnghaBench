
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int lun; int target; int channel; } ;
typedef int ahd_queue_alg ;


 int AC_TRANSFER_NEG ;
 int ahd_platform_set_tags (struct ahd_softc*,struct scsi_device*,struct ahd_devinfo*,int ) ;
 int ahd_send_async (struct ahd_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static void
ahd_set_tags(struct ahd_softc *ahd, struct scsi_cmnd *cmd,
      struct ahd_devinfo *devinfo, ahd_queue_alg alg)
{
 struct scsi_device *sdev = cmd->device;

 ahd_platform_set_tags(ahd, sdev, devinfo, alg);
 ahd_send_async(ahd, devinfo->channel, devinfo->target,
         devinfo->lun, AC_TRANSFER_NEG);
}
