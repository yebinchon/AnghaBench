
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int pid; int comm; } ;


 int DC ;
 int OCD_DC_DBE_BIT ;
 int OCD_DC_MM_BIT ;
 int TIF_DEBUG ;
 int ocd_count ;
 int ocd_lock ;
 int ocd_read (int ) ;
 int ocd_write (int ,int) ;
 int pr_debug (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_tsk_thread_flag (struct task_struct*,int ) ;

void ocd_enable(struct task_struct *child)
{
 u32 dc;

 if (child)
  pr_debug("ocd_enable: child=%s [%u]\n",
    child->comm, child->pid);
 else
  pr_debug("ocd_enable (no child)\n");

 if (!child || !test_and_set_tsk_thread_flag(child, TIF_DEBUG)) {
  spin_lock(&ocd_lock);
  ocd_count++;
  dc = ocd_read(DC);
  dc |= (1 << OCD_DC_MM_BIT) | (1 << OCD_DC_DBE_BIT);
  ocd_write(DC, dc);
  spin_unlock(&ocd_lock);
 }
}
