
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_tcb {int usrtags; } ;
struct TYPE_3__ {int scdev_depth; } ;
struct sym_lcb {TYPE_1__ s; int user_flags; int curr_flags; } ;
struct sym_hcb {struct sym_tcb* target; } ;
struct scsi_device {size_t id; int sdev_target; int lun; scalar_t__ tagged_supported; int host; } ;
struct TYPE_4__ {int max_tag; } ;


 int MSG_SIMPLE_TAG ;
 int SYM_CONF_MAX_TAG ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int spi_dv_device (struct scsi_device*) ;
 int spi_initial_dv (int ) ;
 TYPE_2__ sym_driver_setup ;
 struct sym_hcb* sym_get_hcb (int ) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int ) ;
 int sym_tune_dev_queuing (struct sym_tcb*,int ,int) ;

__attribute__((used)) static int sym53c8xx_slave_configure(struct scsi_device *sdev)
{
 struct sym_hcb *np = sym_get_hcb(sdev->host);
 struct sym_tcb *tp = &np->target[sdev->id];
 struct sym_lcb *lp = sym_lp(tp, sdev->lun);
 int reqtags, depth_to_use;




 lp->curr_flags = lp->user_flags;







 reqtags = sym_driver_setup.max_tag;
 if (reqtags > tp->usrtags)
  reqtags = tp->usrtags;
 if (!sdev->tagged_supported)
  reqtags = 0;
 if (reqtags > SYM_CONF_MAX_TAG)
  reqtags = SYM_CONF_MAX_TAG;
 depth_to_use = reqtags ? reqtags : 1;
 scsi_adjust_queue_depth(sdev,
    sdev->tagged_supported ? MSG_SIMPLE_TAG : 0,
    depth_to_use);
 lp->s.scdev_depth = depth_to_use;
 sym_tune_dev_queuing(tp, sdev->lun, reqtags);

 if (!spi_initial_dv(sdev->sdev_target))
  spi_dv_device(sdev);

 return 0;
}
