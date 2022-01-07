
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dimm_printer_t ;


 int EEXIST ;
 scalar_t__ dimm_handler ;
 int dimm_handler_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int register_dimm_printer(dimm_printer_t func)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&dimm_handler_lock, flags);
 if (!dimm_handler)
  dimm_handler = func;
 else
  ret = -EEXIST;
 spin_unlock_irqrestore(&dimm_handler_lock, flags);

 return ret;
}
