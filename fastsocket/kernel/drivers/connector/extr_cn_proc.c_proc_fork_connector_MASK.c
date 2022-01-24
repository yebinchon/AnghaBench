#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct task_struct {int /*<<< orphan*/  tgid; int /*<<< orphan*/  pid; TYPE_1__* real_parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  child_tgid; int /*<<< orphan*/  child_pid; int /*<<< orphan*/  parent_tgid; int /*<<< orphan*/  parent_pid; } ;
struct TYPE_6__ {TYPE_2__ fork; } ;
struct proc_event {TYPE_3__ event_data; int /*<<< orphan*/  what; int /*<<< orphan*/  timestamp_ns; int /*<<< orphan*/  cpu; } ;
struct cn_msg {int len; scalar_t__ ack; int /*<<< orphan*/  id; int /*<<< orphan*/  seq; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  tgid; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN_IDX_PROC ; 
 int CN_PROC_MSG_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PROC_EVENT_FORK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cn_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cn_proc_event_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  proc_event_num_listeners ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct timespec*) ; 

void FUNC7(struct task_struct *task)
{
	struct cn_msg *msg;
	struct proc_event *ev;
	__u8 buffer[CN_PROC_MSG_SIZE];
	struct timespec ts;

	if (FUNC0(&proc_event_num_listeners) < 1)
		return;

	msg = (struct cn_msg*)buffer;
	ev = (struct proc_event*)msg->data;
	FUNC2(&msg->seq, &ev->cpu);
	FUNC3(&ts); /* get high res monotonic timestamp */
	FUNC5(FUNC6(&ts), (__u64 *)&ev->timestamp_ns);
	ev->what = PROC_EVENT_FORK;
	ev->event_data.fork.parent_pid = task->real_parent->pid;
	ev->event_data.fork.parent_tgid = task->real_parent->tgid;
	ev->event_data.fork.child_pid = task->pid;
	ev->event_data.fork.child_tgid = task->tgid;

	FUNC4(&msg->id, &cn_proc_event_id, sizeof(msg->id));
	msg->ack = 0; /* not used */
	msg->len = sizeof(*ev);
	/*  If cn_netlink_send() failed, the data is not sent */
	FUNC1(msg, CN_IDX_PROC, GFP_KERNEL);
}