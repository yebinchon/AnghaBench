
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmb_data {scalar_t__ last_update; int size; int hw_block; int last_block; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int (* align ) (int ) ;} ;
struct TYPE_3__ {int cmb_start_time; struct cmb_data* cmb; } ;


 TYPE_2__* cmbops ;
 int get_clock () ;
 int memset (int ,int ,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void cmf_generic_reset(struct ccw_device *cdev)
{
 struct cmb_data *cmb_data;

 spin_lock_irq(cdev->ccwlock);
 cmb_data = cdev->private->cmb;
 if (cmb_data) {
  memset(cmb_data->last_block, 0, cmb_data->size);




  memset(cmbops->align(cmb_data->hw_block), 0, cmb_data->size);
  cmb_data->last_update = 0;
 }
 cdev->private->cmb_start_time = get_clock();
 spin_unlock_irq(cdev->ccwlock);
}
