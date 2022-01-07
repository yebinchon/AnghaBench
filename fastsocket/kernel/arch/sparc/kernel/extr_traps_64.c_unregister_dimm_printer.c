
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * dimm_printer_t ;


 int * dimm_handler ;
 int dimm_handler_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void unregister_dimm_printer(dimm_printer_t func)
{
 unsigned long flags;

 spin_lock_irqsave(&dimm_handler_lock, flags);
 if (dimm_handler == func)
  dimm_handler = ((void*)0);
 spin_unlock_irqrestore(&dimm_handler_lock, flags);
}
