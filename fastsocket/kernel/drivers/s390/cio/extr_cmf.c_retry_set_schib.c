
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct set_schib_struct {int kref; int wait; int address; int mbfc; int mme; int ret; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct set_schib_struct* cmb_wait; } ;


 int WARN_ON (int) ;
 int cmf_set_schib_release ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int set_schib (struct ccw_device*,int ,int ,int ) ;
 int wake_up (int *) ;

void retry_set_schib(struct ccw_device *cdev)
{
 struct set_schib_struct *set_data;

 set_data = cdev->private->cmb_wait;
 if (!set_data) {
  WARN_ON(1);
  return;
 }
 kref_get(&set_data->kref);
 set_data->ret = set_schib(cdev, set_data->mme, set_data->mbfc,
      set_data->address);
 wake_up(&set_data->wait);
 kref_put(&set_data->kref, cmf_set_schib_release);
}
