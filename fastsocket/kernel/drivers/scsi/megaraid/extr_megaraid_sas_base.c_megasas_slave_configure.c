
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct scsi_device {int channel; scalar_t__ type; size_t id; int request_queue; TYPE_2__* host; } ;
struct megasas_instance {TYPE_1__* pd_list; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {scalar_t__ driveState; } ;


 int ENXIO ;
 int HZ ;
 int MEGASAS_DEFAULT_CMD_TIMEOUT ;
 int MEGASAS_MAX_DEV_PER_CHANNEL ;
 int MEGASAS_MAX_PD_CHANNELS ;
 scalar_t__ MR_PD_STATE_SYSTEM ;
 scalar_t__ TYPE_DISK ;
 int blk_queue_rq_timeout (int ,int) ;
 struct megasas_instance* megasas_lookup_instance (int ) ;

__attribute__((used)) static int megasas_slave_configure(struct scsi_device *sdev)
{
 u16 pd_index = 0;
 struct megasas_instance *instance ;

 instance = megasas_lookup_instance(sdev->host->host_no);
 if (sdev->channel < MEGASAS_MAX_PD_CHANNELS &&
    sdev->type == TYPE_DISK) {
  pd_index = (sdev->channel * MEGASAS_MAX_DEV_PER_CHANNEL) +
        sdev->id;
  if (instance->pd_list[pd_index].driveState ==
      MR_PD_STATE_SYSTEM) {
   blk_queue_rq_timeout(sdev->request_queue,
    MEGASAS_DEFAULT_CMD_TIMEOUT * HZ);
   return 0;
  }
  return -ENXIO;
 }




 blk_queue_rq_timeout(sdev->request_queue,
  MEGASAS_DEFAULT_CMD_TIMEOUT * HZ);
 return 0;
}
