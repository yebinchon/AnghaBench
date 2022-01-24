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
struct r3964_message {int msg_id; int arg; int error_code; struct r3964_message* next; struct r3964_block_header* block; } ;
struct r3964_client_info {int msg_count; int sig_flags; int /*<<< orphan*/  pid; struct r3964_message* last_msg; int /*<<< orphan*/  lock; struct r3964_message* first_msg; } ;
struct r3964_block_header {int /*<<< orphan*/  locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int R3964_MAX_MSG_COUNT ; 
 int R3964_MSG_ACK ; 
 int R3964_OVERFLOW ; 
 int R3964_USE_SIGIO ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (char*,struct r3964_message*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct r3964_message* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct r3964_client_info *pClient, int msg_id, int arg,
		int error_code, struct r3964_block_header *pBlock)
{
	struct r3964_message *pMsg;
	unsigned long flags;

	if (pClient->msg_count < R3964_MAX_MSG_COUNT - 1) {
queue_the_message:

		pMsg = FUNC3(sizeof(struct r3964_message),
				error_code ? GFP_ATOMIC : GFP_KERNEL);
		FUNC0("add_msg - kmalloc %p", pMsg);
		if (pMsg == NULL) {
			return;
		}

		FUNC4(&pClient->lock, flags);

		pMsg->msg_id = msg_id;
		pMsg->arg = arg;
		pMsg->error_code = error_code;
		pMsg->block = pBlock;
		pMsg->next = NULL;

		if (pClient->last_msg == NULL) {
			pClient->first_msg = pClient->last_msg = pMsg;
		} else {
			pClient->last_msg->next = pMsg;
			pClient->last_msg = pMsg;
		}

		pClient->msg_count++;

		if (pBlock != NULL) {
			pBlock->locks++;
		}
		FUNC5(&pClient->lock, flags);
	} else {
		if ((pClient->last_msg->msg_id == R3964_MSG_ACK)
		    && (pClient->last_msg->error_code == R3964_OVERFLOW)) {
			pClient->last_msg->arg++;
			FUNC1("add_msg - inc prev OVERFLOW-msg");
		} else {
			msg_id = R3964_MSG_ACK;
			arg = 0;
			error_code = R3964_OVERFLOW;
			pBlock = NULL;
			FUNC1("add_msg - queue OVERFLOW-msg");
			goto queue_the_message;
		}
	}
	/* Send SIGIO signal to client process: */
	if (pClient->sig_flags & R3964_USE_SIGIO) {
		FUNC2(pClient->pid, SIGIO, 1);
	}
}