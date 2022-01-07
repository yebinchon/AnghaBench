
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int pdc_console_lock ;
 scalar_t__ pdc_iodc_print (char const*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pdc_console_write(struct console *co, const char *s, unsigned count)
{
 int i = 0;
 unsigned long flags;

 spin_lock_irqsave(&pdc_console_lock, flags);
 do {
  i += pdc_iodc_print(s + i, count - i);
 } while (i < count);
 spin_unlock_irqrestore(&pdc_console_lock, flags);
}
