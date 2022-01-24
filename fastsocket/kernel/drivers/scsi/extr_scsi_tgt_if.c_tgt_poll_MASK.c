#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tgt_ring {int tr_idx; int /*<<< orphan*/  tr_lock; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct tgt_event {TYPE_1__ hdr; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int TGT_MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tgt_event* FUNC3 (struct tgt_ring*,int) ; 
 int /*<<< orphan*/  tgt_poll_wait ; 
 struct tgt_ring tx_ring ; 

__attribute__((used)) static unsigned int FUNC4(struct file * file, struct poll_table_struct *wait)
{
	struct tgt_event *ev;
	struct tgt_ring *ring = &tx_ring;
	unsigned long flags;
	unsigned int mask = 0;
	u32 idx;

	FUNC0(file, &tgt_poll_wait, wait);

	FUNC1(&ring->tr_lock, flags);

	idx = ring->tr_idx ? ring->tr_idx - 1 : TGT_MAX_EVENTS - 1;
	ev = FUNC3(ring, idx);
	if (ev->hdr.status)
		mask |= POLLIN | POLLRDNORM;

	FUNC2(&ring->tr_lock, flags);

	return mask;
}