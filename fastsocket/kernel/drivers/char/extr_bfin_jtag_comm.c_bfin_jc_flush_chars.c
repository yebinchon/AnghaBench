
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int bfin_jc_kthread ;
 int wake_up_process (int ) ;

__attribute__((used)) static void
bfin_jc_flush_chars(struct tty_struct *tty)
{
 wake_up_process(bfin_jc_kthread);
}
