
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {int err; } ;
struct TYPE_4__ {TYPE_1__ ack; } ;
struct proc_event {int cpu; TYPE_2__ event_data; int what; int timestamp_ns; } ;
struct cn_msg {int seq; int ack; int len; int id; scalar_t__ data; } ;
typedef int __u8 ;
typedef int __u64 ;


 int CN_IDX_PROC ;
 int CN_PROC_MSG_SIZE ;
 int GFP_KERNEL ;
 int PROC_EVENT_NONE ;
 int atomic_read (int *) ;
 int cn_netlink_send (struct cn_msg*,int ,int ) ;
 int cn_proc_event_id ;
 int ktime_get_ts (struct timespec*) ;
 int memcpy (int *,int *,int) ;
 int proc_event_num_listeners ;
 int put_unaligned (int ,int *) ;
 int timespec_to_ns (struct timespec*) ;

__attribute__((used)) static void cn_proc_ack(int err, int rcvd_seq, int rcvd_ack)
{
 struct cn_msg *msg;
 struct proc_event *ev;
 __u8 buffer[CN_PROC_MSG_SIZE];
 struct timespec ts;

 if (atomic_read(&proc_event_num_listeners) < 1)
  return;

 msg = (struct cn_msg*)buffer;
 ev = (struct proc_event*)msg->data;
 msg->seq = rcvd_seq;
 ktime_get_ts(&ts);
 put_unaligned(timespec_to_ns(&ts), (__u64 *)&ev->timestamp_ns);
 ev->cpu = -1;
 ev->what = PROC_EVENT_NONE;
 ev->event_data.ack.err = err;
 memcpy(&msg->id, &cn_proc_event_id, sizeof(msg->id));
 msg->ack = rcvd_ack + 1;
 msg->len = sizeof(*ev);
 cn_netlink_send(msg, CN_IDX_PROC, GFP_KERNEL);
}
