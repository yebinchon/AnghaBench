
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {int idle_mode; int lock; TYPE_1__ params; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ MGSL_MODE_ASYNC ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_set_idle (struct slgt_info*) ;

__attribute__((used)) static int set_txidle(struct slgt_info *info, int idle_mode)
{
  unsigned long flags;
 DBGINFO(("%s set_txidle(%d)\n", info->device_name, idle_mode));
 spin_lock_irqsave(&info->lock,flags);
 info->idle_mode = idle_mode;
 if (info->params.mode != MGSL_MODE_ASYNC)
  tx_set_idle(info);
 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
