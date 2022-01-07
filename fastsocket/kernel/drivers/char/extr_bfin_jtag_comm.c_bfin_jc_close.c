
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ bfin_jc_count ;
 int bfin_jc_kthread ;
 int * bfin_jc_tty ;
 int bfin_jc_tty_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,scalar_t__) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void
bfin_jc_close(struct tty_struct *tty, struct file *filp)
{
 mutex_lock(&bfin_jc_tty_mutex);
 pr_debug("close %lu\n", bfin_jc_count);
 if (--bfin_jc_count == 0)
  bfin_jc_tty = ((void*)0);
 wake_up_process(bfin_jc_kthread);
 mutex_unlock(&bfin_jc_tty_mutex);
}
