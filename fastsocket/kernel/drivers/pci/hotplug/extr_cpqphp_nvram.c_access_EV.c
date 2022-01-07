
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int ENODEV ;
 int compaq_int15_entry_point ;
 int int15_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 access_EV (u16 operation, u8 *ev_name, u8 *buffer, u32 *buf_size)
{
 unsigned long flags;
 int op = operation;
 int ret_val;

 if (!compaq_int15_entry_point)
  return -ENODEV;

 spin_lock_irqsave(&int15_lock, flags);
 __asm__ (
  "xorl   %%ebx,%%ebx\n" "xorl    %%edx,%%edx\n" "pushf\n" "push %%cs\n" "cli\n" "call *%6\n"





  : "=c" (*buf_size), "=a" (ret_val)
  : "a" (op), "c" (*buf_size), "S" (ev_name),
  "D" (buffer), "m" (compaq_int15_entry_point)
  : "%ebx", "%edx");
 spin_unlock_irqrestore(&int15_lock, flags);

 return((ret_val & 0xFF00) >> 8);
}
