#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ipmi_recv_msg {int dummy; } ;
typedef  TYPE_2__* ipmi_smi_t ;
struct TYPE_5__ {unsigned int curr_seq; TYPE_1__* seq_table; } ;
struct TYPE_4__ {int inuse; unsigned long orig_timeout; int retries_left; int broadcast; long seqid; int /*<<< orphan*/  timeout; struct ipmi_recv_msg* recv_msg; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned int IPMI_IPMB_NUM_SEQ ; 
 int /*<<< orphan*/  MAX_MSG_TIMEOUT ; 
 long FUNC0 (long) ; 

__attribute__((used)) static int FUNC1(ipmi_smi_t           intf,
			 struct ipmi_recv_msg *recv_msg,
			 unsigned long        timeout,
			 int                  retries,
			 int                  broadcast,
			 unsigned char        *seq,
			 long                 *seqid)
{
	int          rv = 0;
	unsigned int i;

	for (i = intf->curr_seq; (i+1)%IPMI_IPMB_NUM_SEQ != intf->curr_seq;
					i = (i+1)%IPMI_IPMB_NUM_SEQ) {
		if (!intf->seq_table[i].inuse)
			break;
	}

	if (!intf->seq_table[i].inuse) {
		intf->seq_table[i].recv_msg = recv_msg;

		/*
		 * Start with the maximum timeout, when the send response
		 * comes in we will start the real timer.
		 */
		intf->seq_table[i].timeout = MAX_MSG_TIMEOUT;
		intf->seq_table[i].orig_timeout = timeout;
		intf->seq_table[i].retries_left = retries;
		intf->seq_table[i].broadcast = broadcast;
		intf->seq_table[i].inuse = 1;
		intf->seq_table[i].seqid = FUNC0(intf->seq_table[i].seqid);
		*seq = i;
		*seqid = intf->seq_table[i].seqid;
		intf->curr_seq = (i+1)%IPMI_IPMB_NUM_SEQ;
	} else {
		rv = -EAGAIN;
	}

	return rv;
}