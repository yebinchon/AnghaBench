
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ tagged_supported; struct Scsi_Host* host; } ;
struct Scsi_Host {int can_queue; scalar_t__* hostdata; } ;
typedef int adpt_hba ;


 int MSG_SIMPLE_TAG ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

__attribute__((used)) static int adpt_slave_configure(struct scsi_device * device)
{
 struct Scsi_Host *host = device->host;
 adpt_hba* pHba;

 pHba = (adpt_hba *) host->hostdata[0];

 if (host->can_queue && device->tagged_supported) {
  scsi_adjust_queue_depth(device, MSG_SIMPLE_TAG,
    host->can_queue - 1);
 } else {
  scsi_adjust_queue_depth(device, 0, 1);
 }
 return 0;
}
