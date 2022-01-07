
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct cmbe {int ssch_rsch_count; int sample_count; int initial_command_response_time; int device_busy_time; int device_active_only_time; int control_unit_queuing_time; int device_disconnect_time; int function_pending_time; int device_connect_time; } ;
struct cmb_data {struct cmbe* last_block; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {struct cmb_data* cmb; } ;
 int cmf_cmb_copy_wait (struct ccw_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int time_to_avg_nsec (int ,int) ;

__attribute__((used)) static u64 read_cmbe(struct ccw_device *cdev, int index)
{
 struct cmbe *cmb;
 struct cmb_data *cmb_data;
 u32 val;
 int ret;
 unsigned long flags;

 ret = cmf_cmb_copy_wait(cdev);
 if (ret < 0)
  return 0;

 spin_lock_irqsave(cdev->ccwlock, flags);
 cmb_data = cdev->private->cmb;
 if (!cmb_data) {
  ret = 0;
  goto out;
 }
 cmb = cmb_data->last_block;

 switch (index) {
 case 128:
  ret = cmb->ssch_rsch_count;
  goto out;
 case 129:
  ret = cmb->sample_count;
  goto out;
 case 133:
  val = cmb->device_connect_time;
  break;
 case 131:
  val = cmb->function_pending_time;
  break;
 case 132:
  val = cmb->device_disconnect_time;
  break;
 case 136:
  val = cmb->control_unit_queuing_time;
  break;
 case 135:
  val = cmb->device_active_only_time;
  break;
 case 134:
  val = cmb->device_busy_time;
  break;
 case 130:
  val = cmb->initial_command_response_time;
  break;
 default:
  ret = 0;
  goto out;
 }
 ret = time_to_avg_nsec(val, cmb->sample_count);
out:
 spin_unlock_irqrestore(cdev->ccwlock, flags);
 return ret;
}
