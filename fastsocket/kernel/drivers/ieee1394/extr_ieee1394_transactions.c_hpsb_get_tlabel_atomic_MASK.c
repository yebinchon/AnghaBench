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
typedef  int u8 ;
struct hpsb_packet {int tlabel; TYPE_2__* host; int /*<<< orphan*/  node_id; } ;
struct TYPE_4__ {int* next_tl; TYPE_1__* tl_pool; } ;
struct TYPE_3__ {unsigned long* map; } ;

/* Variables and functions */
 int ALL_NODES ; 
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int FUNC2 (unsigned long*,int) ; 
 int FUNC3 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  hpsb_tlabel_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct hpsb_packet *packet)
{
	unsigned long flags, *tp;
	u8 *next;
	int tlabel, n = FUNC0(packet->node_id);

	/* Broadcast transactions are complete once the request has been sent.
	 * Use the same transaction label for all broadcast transactions. */
	if (FUNC6(n == ALL_NODES)) {
		packet->tlabel = 0;
		return 0;
	}
	tp = packet->host->tl_pool[n].map;
	next = &packet->host->next_tl[n];

	FUNC4(&hpsb_tlabel_lock, flags);
	tlabel = FUNC3(tp, 64, *next);
	if (tlabel > 63)
		tlabel = FUNC2(tp, 64);
	if (tlabel > 63) {
		FUNC5(&hpsb_tlabel_lock, flags);
		return -EAGAIN;
	}
	FUNC1(tlabel, tp);
	*next = (tlabel + 1) & 63;
	FUNC5(&hpsb_tlabel_lock, flags);

	packet->tlabel = tlabel;
	return 0;
}