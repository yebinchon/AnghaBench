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
struct r3964_info {struct r3964_block_header* tx_first; int /*<<< orphan*/  lock; struct r3964_block_header* tx_last; } ;
struct r3964_block_header {int /*<<< orphan*/  length; struct r3964_block_header* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct r3964_block_header*,int /*<<< orphan*/ ,struct r3964_block_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct r3964_info *pInfo,
			 struct r3964_block_header *pHeader)
{
	unsigned long flags;

	FUNC1(&pInfo->lock, flags);

	pHeader->next = NULL;

	if (pInfo->tx_last == NULL) {
		pInfo->tx_first = pInfo->tx_last = pHeader;
	} else {
		pInfo->tx_last->next = pHeader;
		pInfo->tx_last = pHeader;
	}

	FUNC2(&pInfo->lock, flags);

	FUNC0("add_tx_queue %p, length %d, tx_first = %p",
		pHeader, pHeader->length, pInfo->tx_first);
}