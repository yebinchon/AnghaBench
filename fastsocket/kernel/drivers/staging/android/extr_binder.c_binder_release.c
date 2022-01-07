
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_proc {int pid; } ;
typedef int strbuf ;


 int BINDER_DEFERRED_RELEASE ;
 int binder_defer_work (struct binder_proc*,int ) ;
 scalar_t__ binder_proc_dir_entry_proc ;
 int remove_proc_entry (char*,scalar_t__) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int binder_release(struct inode *nodp, struct file *filp)
{
 struct binder_proc *proc = filp->private_data;
 if (binder_proc_dir_entry_proc) {
  char strbuf[11];
  snprintf(strbuf, sizeof(strbuf), "%u", proc->pid);
  remove_proc_entry(strbuf, binder_proc_dir_entry_proc);
 }

 binder_defer_work(proc, BINDER_DEFERRED_RELEASE);

 return 0;
}
