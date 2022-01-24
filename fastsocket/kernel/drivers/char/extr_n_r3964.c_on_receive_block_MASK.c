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
struct r3964_info {unsigned int rx_position; int flags; scalar_t__ bcc; scalar_t__ last_rx; scalar_t__ nRetry; void* state; int /*<<< orphan*/  read_wait; struct r3964_client_info* firstClient; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tmr; } ;
struct r3964_client_info {int sig_flags; struct r3964_client_info* next; } ;
struct r3964_block_header {unsigned int length; unsigned char* data; int /*<<< orphan*/ * owner; int /*<<< orphan*/ * next; scalar_t__ locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAK ; 
 int R3964_BCC ; 
 int R3964_CHECKSUM ; 
 int R3964_ERROR ; 
 void* R3964_IDLE ; 
 scalar_t__ R3964_MAX_RETRIES ; 
 int /*<<< orphan*/  R3964_MSG_DATA ; 
 int /*<<< orphan*/  R3964_OK ; 
 int R3964_SIG_DATA ; 
 scalar_t__ R3964_TO_RX_PANIC ; 
 void* R3964_WAIT_FOR_RX_REPEAT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct r3964_block_header*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct r3964_client_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct r3964_block_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct r3964_info*,struct r3964_block_header*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct r3964_info*) ; 
 scalar_t__ jiffies ; 
 struct r3964_block_header* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct r3964_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct r3964_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct r3964_info *pInfo)
{
	unsigned int length;
	struct r3964_client_info *pClient;
	struct r3964_block_header *pBlock;

	length = pInfo->rx_position;

	/* compare byte checksum characters: */
	if (pInfo->flags & R3964_BCC) {
		if (pInfo->bcc != pInfo->last_rx) {
			FUNC1("checksum error - got %x but expected %x",
				 pInfo->last_rx, pInfo->bcc);
			pInfo->flags |= R3964_CHECKSUM;
		}
	}

	/* check for errors (parity, overrun,...): */
	if (pInfo->flags & R3964_ERROR) {
		FUNC1("on_receive_block - transmission failed error %x",
			 pInfo->flags & R3964_ERROR);

		FUNC10(pInfo, NAK);
		FUNC6(pInfo);
		if (pInfo->nRetry < R3964_MAX_RETRIES) {
			pInfo->state = R3964_WAIT_FOR_RX_REPEAT;
			pInfo->nRetry++;
			FUNC9(&pInfo->tmr, jiffies + R3964_TO_RX_PANIC);
		} else {
			FUNC1("on_receive_block - failed after max retries");
			pInfo->state = R3964_IDLE;
		}
		return;
	}

	/* received block; submit DLE: */
	FUNC10(pInfo, DLE);
	FUNC6(pInfo);
	FUNC5(&pInfo->tmr);
	FUNC2(" rx success: got %d chars", length);

	/* prepare struct r3964_block_header: */
	pBlock = FUNC7(length + sizeof(struct r3964_block_header),
			GFP_KERNEL);
	FUNC0("on_receive_block - kmalloc %p", pBlock);

	if (pBlock == NULL)
		return;

	pBlock->length = length;
	pBlock->data = ((unsigned char *)pBlock) +
			sizeof(struct r3964_block_header);
	pBlock->locks = 0;
	pBlock->next = NULL;
	pBlock->owner = NULL;

	FUNC8(pBlock->data, pInfo->rx_buf, length);

	/* queue block into rx_queue: */
	FUNC4(pInfo, pBlock);

	/* notify attached client processes: */
	for (pClient = pInfo->firstClient; pClient; pClient = pClient->next) {
		if (pClient->sig_flags & R3964_SIG_DATA) {
			FUNC3(pClient, R3964_MSG_DATA, length, R3964_OK,
				pBlock);
		}
	}
	FUNC12(&pInfo->read_wait);

	pInfo->state = R3964_IDLE;

	FUNC11(pInfo);
}