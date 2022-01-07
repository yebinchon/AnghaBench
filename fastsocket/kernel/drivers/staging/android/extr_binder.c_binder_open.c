
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_proc {int pid; int delivered_death; int proc_node; int default_priority; int wait; int todo; TYPE_2__* tsk; } ;
typedef int strbuf ;
struct TYPE_6__ {TYPE_1__* group_leader; int pid; } ;
struct TYPE_5__ {int pid; } ;


 int BINDER_DEBUG_OPEN_CLOSE ;
 int BINDER_STAT_PROC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int S_IRUGO ;
 int binder_debug (int ,char*,int,int ) ;
 int binder_lock ;
 scalar_t__ binder_proc_dir_entry_proc ;
 int binder_procs ;
 int binder_read_proc_proc ;
 int binder_stats_created (int ) ;
 int create_proc_read_entry (char*,int ,scalar_t__,int ,struct binder_proc*) ;
 TYPE_2__* current ;
 int get_task_struct (TYPE_2__*) ;
 int hlist_add_head (int *,int *) ;
 int init_waitqueue_head (int *) ;
 struct binder_proc* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_proc_entry (char*,scalar_t__) ;
 int snprintf (char*,int,char*,int) ;
 int task_nice (TYPE_2__*) ;

__attribute__((used)) static int binder_open(struct inode *nodp, struct file *filp)
{
 struct binder_proc *proc;

 binder_debug(BINDER_DEBUG_OPEN_CLOSE, "binder_open: %d:%d\n",
       current->group_leader->pid, current->pid);

 proc = kzalloc(sizeof(*proc), GFP_KERNEL);
 if (proc == ((void*)0))
  return -ENOMEM;
 get_task_struct(current);
 proc->tsk = current;
 INIT_LIST_HEAD(&proc->todo);
 init_waitqueue_head(&proc->wait);
 proc->default_priority = task_nice(current);
 mutex_lock(&binder_lock);
 binder_stats_created(BINDER_STAT_PROC);
 hlist_add_head(&proc->proc_node, &binder_procs);
 proc->pid = current->group_leader->pid;
 INIT_LIST_HEAD(&proc->delivered_death);
 filp->private_data = proc;
 mutex_unlock(&binder_lock);

 if (binder_proc_dir_entry_proc) {
  char strbuf[11];
  snprintf(strbuf, sizeof(strbuf), "%u", proc->pid);
  remove_proc_entry(strbuf, binder_proc_dir_entry_proc);
  create_proc_read_entry(strbuf, S_IRUGO,
           binder_proc_dir_entry_proc,
           binder_read_proc_proc, proc);
 }

 return 0;
}
