
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m68k_serial {char* xmit_buf; int xmit_cnt; size_t xmit_tail; } ;


 int SERIAL_XMIT_SIZE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct m68k_serial* m68k_soft ;
 int min (int,int) ;
 int rs_put_char (char) ;
 int udelay (int) ;

__attribute__((used)) static void rs_fair_output(void)
{
 int left;
 unsigned long flags;
 struct m68k_serial *info = &m68k_soft[0];
 char c;

 if (info == 0) return;
 if (info->xmit_buf == 0) return;

 local_irq_save(flags);
 left = info->xmit_cnt;
 while (left != 0) {
  c = info->xmit_buf[info->xmit_tail];
  info->xmit_tail = (info->xmit_tail+1) & (SERIAL_XMIT_SIZE-1);
  info->xmit_cnt--;
  local_irq_restore(flags);

  rs_put_char(c);

  local_irq_save(flags);
  left = min(info->xmit_cnt, left-1);
 }


 udelay(5);

 local_irq_restore(flags);
 return;
}
