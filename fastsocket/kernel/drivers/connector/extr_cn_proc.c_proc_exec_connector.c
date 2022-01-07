
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct task_struct {int tgid; int pid; } ;
struct TYPE_3__ {int process_tgid; int process_pid; } ;
struct TYPE_4__ {TYPE_1__ exec; } ;
struct proc_event {TYPE_2__ event_data; int what; int timestamp_ns; int cpu; } ;
struct cn_msg {int len; scalar_t__ ack; int id; int seq; scalar_t__ data; } ;
typedef int __u8 ;
typedef int __u64 ;


 int CN_IDX_PROC ;
 int CN_PROC_MSG_SIZE ;
 int GFP_KERNEL ;
 int PROC_EVENT_EXEC ;
 int atomic_read (int *) ;
 int cn_netlink_send (struct cn_msg*,int ,int ) ;
 int cn_proc_event_id ;
 int get_seq (int *,int *) ;
 int ktime_get_ts (struct timespec*) ;
 int memcpy (int *,int *,int) ;
 int proc_event_num_listeners ;
 int put_unaligned (int ,int *) ;
 int timespec_to_ns (struct timespec*) ;

void proc_exec_connector(struct task_struct *task)
{
 struct cn_msg *msg;
 struct proc_event *ev;
 struct timespec ts;
 __u8 buffer[CN_PROC_MSG_SIZE];

 if (atomic_read(&proc_event_num_listeners) < 1)
  return;

 msg = (struct cn_msg*)buffer;
 ev = (struct proc_event*)msg->data;
 get_seq(&msg->seq, &ev->cpu);
 ktime_get_ts(&ts);
 put_unaligned(timespec_to_ns(&ts), (__u64 *)&ev->timestamp_ns);
 ev->what = PROC_EVENT_EXEC;
 ev->event_data.exec.process_pid = task->pid;
 ev->event_data.exec.process_tgid = task->tgid;

 memcpy(&msg->id, &cn_proc_event_id, sizeof(msg->id));
 msg->ack = 0;
 msg->len = sizeof(*ev);
 cn_netlink_send(msg, CN_IDX_PROC, GFP_KERNEL);
}
