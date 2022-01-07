
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct task_struct {int tgid; int pid; } ;
struct TYPE_6__ {int egid; int euid; } ;
struct TYPE_5__ {int rgid; int ruid; } ;
struct TYPE_7__ {TYPE_2__ e; TYPE_1__ r; int process_tgid; int process_pid; } ;
struct TYPE_8__ {TYPE_3__ id; } ;
struct proc_event {int what; int timestamp_ns; int cpu; TYPE_4__ event_data; } ;
struct cred {int egid; int gid; int euid; int uid; } ;
struct cn_msg {int len; scalar_t__ ack; int id; int seq; scalar_t__ data; } ;
typedef int __u8 ;
typedef int __u64 ;


 int CN_IDX_PROC ;
 int CN_PROC_MSG_SIZE ;
 int GFP_KERNEL ;
 int PROC_EVENT_GID ;
 int PROC_EVENT_UID ;
 struct cred* __task_cred (struct task_struct*) ;
 int atomic_read (int *) ;
 int cn_netlink_send (struct cn_msg*,int ,int ) ;
 int cn_proc_event_id ;
 int get_seq (int *,int *) ;
 int ktime_get_ts (struct timespec*) ;
 int memcpy (int *,int *,int) ;
 int proc_event_num_listeners ;
 int put_unaligned (int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int timespec_to_ns (struct timespec*) ;

void proc_id_connector(struct task_struct *task, int which_id)
{
 struct cn_msg *msg;
 struct proc_event *ev;
 __u8 buffer[CN_PROC_MSG_SIZE];
 struct timespec ts;
 const struct cred *cred;

 if (atomic_read(&proc_event_num_listeners) < 1)
  return;

 msg = (struct cn_msg*)buffer;
 ev = (struct proc_event*)msg->data;
 ev->what = which_id;
 ev->event_data.id.process_pid = task->pid;
 ev->event_data.id.process_tgid = task->tgid;
 rcu_read_lock();
 cred = __task_cred(task);
 if (which_id == PROC_EVENT_UID) {
  ev->event_data.id.r.ruid = cred->uid;
  ev->event_data.id.e.euid = cred->euid;
 } else if (which_id == PROC_EVENT_GID) {
  ev->event_data.id.r.rgid = cred->gid;
  ev->event_data.id.e.egid = cred->egid;
 } else {
  rcu_read_unlock();
       return;
 }
 rcu_read_unlock();
 get_seq(&msg->seq, &ev->cpu);
 ktime_get_ts(&ts);
 put_unaligned(timespec_to_ns(&ts), (__u64 *)&ev->timestamp_ns);

 memcpy(&msg->id, &cn_proc_event_id, sizeof(msg->id));
 msg->ack = 0;
 msg->len = sizeof(*ev);
 cn_netlink_send(msg, CN_IDX_PROC, GFP_KERNEL);
}
