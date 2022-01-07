
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int lun; TYPE_1__* sdev_target; } ;
struct info_str {int dummy; } ;
struct ahc_linux_device {int qfrozen; int maxtags; int openings; int active; int commands_issued; } ;
struct TYPE_2__ {int id; scalar_t__ channel; } ;


 int copy_info (struct info_str*,char*,int ,...) ;
 struct ahc_linux_device* scsi_transport_device_data (struct scsi_device*) ;

__attribute__((used)) static void
ahc_dump_device_state(struct info_str *info, struct scsi_device *sdev)
{
 struct ahc_linux_device *dev = scsi_transport_device_data(sdev);

 copy_info(info, "\tChannel %c Target %d Lun %d Settings\n",
    sdev->sdev_target->channel + 'A',
    sdev->sdev_target->id, sdev->lun);

 copy_info(info, "\t\tCommands Queued %ld\n", dev->commands_issued);
 copy_info(info, "\t\tCommands Active %d\n", dev->active);
 copy_info(info, "\t\tCommand Openings %d\n", dev->openings);
 copy_info(info, "\t\tMax Tagged Openings %d\n", dev->maxtags);
 copy_info(info, "\t\tDevice Queue Frozen Count %d\n", dev->qfrozen);
}
