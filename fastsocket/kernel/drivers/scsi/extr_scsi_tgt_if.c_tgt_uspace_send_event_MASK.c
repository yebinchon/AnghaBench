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
typedef  int /*<<< orphan*/  u32 ;
struct tgt_ring {int /*<<< orphan*/  tr_lock; int /*<<< orphan*/  tr_idx; } ;
struct TYPE_2__ {int status; int /*<<< orphan*/  type; } ;
struct tgt_event {TYPE_1__ hdr; } ;

/* Variables and functions */
 int BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct tgt_event*,struct tgt_event*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tgt_event* FUNC5 (struct tgt_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tgt_poll_wait ; 
 int /*<<< orphan*/  FUNC6 (struct tgt_ring*) ; 
 struct tgt_ring tx_ring ; 
 int /*<<< orphan*/  FUNC7 (struct tgt_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(u32 type, struct tgt_event *p)
{
	struct tgt_event *ev;
	struct tgt_ring *ring = &tx_ring;
	unsigned long flags;
	int err = 0;

	FUNC3(&ring->tr_lock, flags);

	ev = FUNC5(ring, ring->tr_idx);
	if (!ev->hdr.status)
		FUNC6(ring);
	else
		err = -BUSY;

	FUNC4(&ring->tr_lock, flags);

	if (err)
		return err;

	FUNC2(ev, p, sizeof(*ev));
	ev->hdr.type = type;
	FUNC1();
	ev->hdr.status = 1;

	FUNC0(FUNC7(ev));

	FUNC8(&tgt_poll_wait);

	return 0;
}