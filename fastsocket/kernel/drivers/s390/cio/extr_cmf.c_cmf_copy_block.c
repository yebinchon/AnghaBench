
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct cmb_data {void* last_block; int last_update; int size; int hw_block; } ;
struct TYPE_5__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_8__ {void* (* align ) (int ) ;} ;
struct TYPE_7__ {struct cmb_data* cmb; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int SCSW_ACTL_DEVACT ;
 int SCSW_ACTL_SCHACT ;
 int SCSW_ACTL_SUSPENDED ;
 int SCSW_FCTL_START_FUNC ;
 int SCSW_STCTL_SEC_STATUS ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 TYPE_4__* cmbops ;
 int get_clock () ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 scalar_t__ memcmp (void*,void*,int ) ;
 int memcpy (void*,void*,int ) ;
 int scsw_actl (int *) ;
 int scsw_fctl (int *) ;
 int scsw_stctl (int *) ;
 void* stub1 (int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int cmf_copy_block(struct ccw_device *cdev)
{
 struct subchannel *sch;
 void *reference_buf;
 void *hw_block;
 struct cmb_data *cmb_data;

 sch = to_subchannel(cdev->dev.parent);

 if (cio_update_schib(sch))
  return -ENODEV;

 if (scsw_fctl(&sch->schib.scsw) & SCSW_FCTL_START_FUNC) {

  if ((!(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_SUSPENDED)) &&
      (scsw_actl(&sch->schib.scsw) &
       (SCSW_ACTL_DEVACT | SCSW_ACTL_SCHACT)) &&
      (!(scsw_stctl(&sch->schib.scsw) & SCSW_STCTL_SEC_STATUS)))
   return -EBUSY;
 }
 cmb_data = cdev->private->cmb;
 hw_block = cmbops->align(cmb_data->hw_block);
 if (!memcmp(cmb_data->last_block, hw_block, cmb_data->size))

  return 0;
 reference_buf = kzalloc(cmb_data->size, GFP_ATOMIC);
 if (!reference_buf)
  return -ENOMEM;

 do {
  memcpy(cmb_data->last_block, hw_block, cmb_data->size);
  memcpy(reference_buf, hw_block, cmb_data->size);
 } while (memcmp(cmb_data->last_block, reference_buf, cmb_data->size));
 cmb_data->last_update = get_clock();
 kfree(reference_buf);
 return 0;
}
