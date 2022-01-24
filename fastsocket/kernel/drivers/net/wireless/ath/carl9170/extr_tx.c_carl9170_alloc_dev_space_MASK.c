#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem_blocks; int /*<<< orphan*/  mem_block_size; } ;
struct ar9170 {int /*<<< orphan*/  mem_free_blocks; int /*<<< orphan*/  mem_lock; TYPE_1__ fw; int /*<<< orphan*/  mem_bitmap; int /*<<< orphan*/  mem_allocs; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct _carl9170_tx_superframe {TYPE_2__ s; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ar9170 *ar, struct sk_buff *skb)
{
	struct _carl9170_tx_superframe *super = (void *) skb->data;
	unsigned int chunks;
	int cookie = -1;

	FUNC2(&ar->mem_allocs);

	chunks = FUNC0(skb->len, ar->fw.mem_block_size);
	if (FUNC7(FUNC3(chunks, &ar->mem_free_blocks) < 0)) {
		FUNC1(chunks, &ar->mem_free_blocks);
		return -ENOSPC;
	}

	FUNC5(&ar->mem_lock);
	cookie = FUNC4(ar->mem_bitmap, ar->fw.mem_blocks, 0);
	FUNC6(&ar->mem_lock);

	if (FUNC7(cookie < 0)) {
		FUNC1(chunks, &ar->mem_free_blocks);
		return -ENOSPC;
	}

	super = (void *) skb->data;

	/*
	 * Cookie #0 serves two special purposes:
	 *  1. The firmware might use it generate BlockACK frames
	 *     in responds of an incoming BlockAckReqs.
	 *
	 *  2. Prevent double-free bugs.
	 */
	super->s.cookie = (u8) cookie + 1;
	return 0;
}