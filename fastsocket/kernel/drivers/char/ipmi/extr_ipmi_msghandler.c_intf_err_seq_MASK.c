#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_table {unsigned long seqid; struct ipmi_recv_msg* recv_msg; scalar_t__ inuse; } ;
struct ipmi_recv_msg {int dummy; } ;
typedef  TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {int /*<<< orphan*/  seq_lock; struct seq_table* seq_table; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (long,unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_recv_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(ipmi_smi_t   intf,
			long         msgid,
			unsigned int err)
{
	int                  rv = -ENODEV;
	unsigned long        flags;
	unsigned char        seq;
	unsigned long        seqid;
	struct ipmi_recv_msg *msg = NULL;


	FUNC0(msgid, seq, seqid);

	FUNC2(&(intf->seq_lock), flags);
	/*
	 * We do this verification because the user can be deleted
	 * while a message is outstanding.
	 */
	if ((intf->seq_table[seq].inuse)
				&& (intf->seq_table[seq].seqid == seqid)) {
		struct seq_table *ent = &(intf->seq_table[seq]);

		ent->inuse = 0;
		msg = ent->recv_msg;
		rv = 0;
	}
	FUNC3(&(intf->seq_lock), flags);

	if (msg)
		FUNC1(msg, err);

	return rv;
}