#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint ;
struct iop_msg {int* reply; scalar_t__* message; } ;
struct adb_request {int reply_len; int* reply; } ;
struct adb_iopmsg {int count; int flags; scalar_t__ cmd; scalar_t__* data; } ;

/* Variables and functions */
 int ADB_IOP_AUTOPOLL ; 
 int ADB_IOP_EXPLICIT ; 
 int ADB_IOP_TIMEOUT ; 
 int IOP_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adb_request*,scalar_t__) ; 
 scalar_t__ adb_iop_state ; 
 scalar_t__ awaiting_reply ; 
 struct adb_request* current_req ; 
 scalar_t__ idle ; 
 int /*<<< orphan*/  FUNC2 (struct iop_msg*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(struct iop_msg *msg)
{
	struct adb_iopmsg *amsg = (struct adb_iopmsg *) msg->message;
	struct adb_request *req;
	uint flags;
#ifdef DEBUG_ADB_IOP
	int i;
#endif

	FUNC4(flags);

	req = current_req;

#ifdef DEBUG_ADB_IOP
	printk("adb_iop_listen %p: rcvd packet, %d bytes: %02X %02X", req,
		(uint) amsg->count + 2, (uint) amsg->flags, (uint) amsg->cmd);
	for (i = 0; i < amsg->count; i++)
		printk(" %02X", (uint) amsg->data[i]);
	printk("\n");
#endif

	/* Handle a timeout. Timeout packets seem to occur even after */
	/* we've gotten a valid reply to a TALK, so I'm assuming that */
	/* a "timeout" is actually more like an "end-of-data" signal. */
	/* We need to send back a timeout packet to the IOP to shut   */
	/* it up, plus complete the current request, if any.          */

	if (amsg->flags & ADB_IOP_TIMEOUT) {
		msg->reply[0] = ADB_IOP_TIMEOUT | ADB_IOP_AUTOPOLL;
		msg->reply[1] = 0;
		msg->reply[2] = 0;
		if (req && (adb_iop_state != idle)) {
			FUNC1(req, idle);
		}
	} else {
		/* TODO: is it possible for more than one chunk of data  */
		/*       to arrive before the timeout? If so we need to */
		/*       use reply_ptr here like the other drivers do.  */
		if ((adb_iop_state == awaiting_reply) &&
		    (amsg->flags & ADB_IOP_EXPLICIT)) {
			req->reply_len = amsg->count + 1;
			FUNC5(req->reply, &amsg->cmd, req->reply_len);
		} else {
			FUNC0(&amsg->cmd, amsg->count + 1,
				  amsg->flags & ADB_IOP_AUTOPOLL);
		}
		FUNC5(msg->reply, msg->message, IOP_MSG_LEN);
	}
	FUNC2(msg);
	FUNC3(flags);
}