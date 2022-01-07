
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {int dummy; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
struct TYPE_3__ {int (* get_frame_format ) () ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 int CCDC_FRMFMT_PROGRESSIVE ;
 int IRQ_VDINT1 ;
 TYPE_2__* ccdc_dev ;
 int free_irq (int ,struct vpfe_device*) ;
 int stub1 () ;

__attribute__((used)) static void vpfe_detach_irq(struct vpfe_device *vpfe_dev)
{
 enum ccdc_frmfmt frame_format;

 frame_format = ccdc_dev->hw_ops.get_frame_format();
 if (frame_format == CCDC_FRMFMT_PROGRESSIVE)
  free_irq(IRQ_VDINT1, vpfe_dev);
}
