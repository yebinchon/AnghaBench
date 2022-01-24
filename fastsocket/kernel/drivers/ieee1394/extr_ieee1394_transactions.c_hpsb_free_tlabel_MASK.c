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
struct hpsb_packet {int tlabel; TYPE_2__* host; int /*<<< orphan*/  node_id; } ;
struct TYPE_4__ {TYPE_1__* tl_pool; } ;
struct TYPE_3__ {unsigned long* map; } ;

/* Variables and functions */
 int ALL_NODES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  hpsb_tlabel_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tlabel_wq ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct hpsb_packet *packet)
{
	unsigned long flags, *tp;
	int tlabel, n = FUNC1(packet->node_id);

	if (FUNC5(n == ALL_NODES))
		return;
	tp = packet->host->tl_pool[n].map;
	tlabel = packet->tlabel;
	FUNC0(tlabel > 63 || tlabel < 0);

	FUNC3(&hpsb_tlabel_lock, flags);
	FUNC0(!FUNC2(tlabel, tp));
	FUNC4(&hpsb_tlabel_lock, flags);

	FUNC6(&tlabel_wq);
}