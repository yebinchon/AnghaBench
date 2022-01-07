
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int lock; int device_name; } ;


 int DBGINFO (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tdma_reset (struct slgt_info*) ;

__attribute__((used)) static int tx_abort(struct slgt_info *info)
{
  unsigned long flags;
 DBGINFO(("%s tx_abort\n", info->device_name));
 spin_lock_irqsave(&info->lock,flags);
 tdma_reset(info);
 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
