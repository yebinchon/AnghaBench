
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int taskmgmt_lock; TYPE_1__* alt_ioc; scalar_t__ taskmgmt_quiesce_io; scalar_t__ taskmgmt_in_progress; } ;
struct TYPE_4__ {scalar_t__ taskmgmt_quiesce_io; scalar_t__ taskmgmt_in_progress; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt_clear_taskmgmt_in_progress_flag(MPT_ADAPTER *ioc)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->taskmgmt_lock, flags);
 ioc->taskmgmt_in_progress = 0;
 ioc->taskmgmt_quiesce_io = 0;
 if (ioc->alt_ioc) {
  ioc->alt_ioc->taskmgmt_in_progress = 0;
  ioc->alt_ioc->taskmgmt_quiesce_io = 0;
 }
 spin_unlock_irqrestore(&ioc->taskmgmt_lock, flags);
}
