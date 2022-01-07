
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int scc_ch_write (char) ;

__attribute__((used)) static void scc_console_write (struct console *co, const char *str, unsigned count)
{
 unsigned long flags;

 local_irq_save(flags);

 while (count--)
 {
  if (*str == '\n')
   scc_ch_write ('\r');
  scc_ch_write (*str++);
 }
 local_irq_restore(flags);
}
