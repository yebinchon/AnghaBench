
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int taskmgmt_in_progress; int taskmgmt_quiesce_io; int taskmgmt_lock; TYPE_1__* alt_ioc; scalar_t__ ioc_reset_in_progress; } ;
struct TYPE_4__ {int taskmgmt_in_progress; int taskmgmt_quiesce_io; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
mpt_set_taskmgmt_in_progress_flag(MPT_ADAPTER *ioc)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&ioc->taskmgmt_lock, flags);
 if (ioc->ioc_reset_in_progress || ioc->taskmgmt_in_progress ||
     (ioc->alt_ioc && ioc->alt_ioc->taskmgmt_in_progress)) {
  retval = -1;
  goto out;
 }
 retval = 0;
 ioc->taskmgmt_in_progress = 1;
 ioc->taskmgmt_quiesce_io = 1;
 if (ioc->alt_ioc) {
  ioc->alt_ioc->taskmgmt_in_progress = 1;
  ioc->alt_ioc->taskmgmt_quiesce_io = 1;
 }
 out:
 spin_unlock_irqrestore(&ioc->taskmgmt_lock, flags);
 return retval;
}
