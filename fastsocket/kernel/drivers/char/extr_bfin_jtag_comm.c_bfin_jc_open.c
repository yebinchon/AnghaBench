
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int bfin_jc_count ;
 int bfin_jc_kthread ;
 struct tty_struct* bfin_jc_tty ;
 int bfin_jc_tty_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int
bfin_jc_open(struct tty_struct *tty, struct file *filp)
{
 mutex_lock(&bfin_jc_tty_mutex);
 pr_debug("open %lu\n", bfin_jc_count);
 ++bfin_jc_count;
 bfin_jc_tty = tty;
 wake_up_process(bfin_jc_kthread);
 mutex_unlock(&bfin_jc_tty_mutex);
 return 0;
}
