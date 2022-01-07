
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int lun; int target; int channel; } ;
typedef int ahc_queue_alg ;


 int AC_TRANSFER_NEG ;
 int ahc_platform_set_tags (struct ahc_softc*,struct scsi_device*,struct ahc_devinfo*,int ) ;
 int ahc_send_async (struct ahc_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static void
ahc_set_tags(struct ahc_softc *ahc, struct scsi_cmnd *cmd,
      struct ahc_devinfo *devinfo, ahc_queue_alg alg)
{
 struct scsi_device *sdev = cmd->device;

  ahc_platform_set_tags(ahc, sdev, devinfo, alg);
  ahc_send_async(ahc, devinfo->channel, devinfo->target,
          devinfo->lun, AC_TRANSFER_NEG);
}
