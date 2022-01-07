
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct file {int dummy; } ;
struct e100_serial {int dummy; } ;


 unsigned int TIOCM_CD ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RI ;
 unsigned int TIOCM_RTS ;
 int e100_cd_out (struct e100_serial*,int) ;
 int e100_dtr (struct e100_serial*,int) ;
 int e100_ri_out (struct e100_serial*,int) ;
 int e100_rts (struct e100_serial*,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int
rs_tiocmset(struct tty_struct *tty, struct file *file,
  unsigned int set, unsigned int clear)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 unsigned long flags;

 local_irq_save(flags);

 if (clear & TIOCM_RTS)
  e100_rts(info, 0);
 if (clear & TIOCM_DTR)
  e100_dtr(info, 0);

 if (clear & TIOCM_RI)
  e100_ri_out(info, 0);
 if (clear & TIOCM_CD)
  e100_cd_out(info, 0);

 if (set & TIOCM_RTS)
  e100_rts(info, 1);
 if (set & TIOCM_DTR)
  e100_dtr(info, 1);

 if (set & TIOCM_RI)
  e100_ri_out(info, 1);
 if (set & TIOCM_CD)
  e100_cd_out(info, 1);

 local_irq_restore(flags);
 return 0;
}
