
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int acquire_console_sem () ;
 int bfin_jc_circ_write (unsigned char const*,int) ;
 int bfin_jc_kthread ;
 int release_console_sem () ;
 int wake_up_process (int ) ;

__attribute__((used)) static int
bfin_jc_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 int i;
 acquire_console_sem();
 i = bfin_jc_circ_write(buf, count);
 release_console_sem();
 wake_up_process(bfin_jc_kthread);
 return i;
}
