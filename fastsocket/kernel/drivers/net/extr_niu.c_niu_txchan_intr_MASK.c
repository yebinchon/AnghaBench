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
struct tx_ring_info {scalar_t__ tx_cs; int /*<<< orphan*/  tx_channel; } ;
struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct niu *np, struct tx_ring_info *rp,
			    int ldn)
{
	rp->tx_cs = FUNC2(FUNC0(rp->tx_channel));

	FUNC1(INTR, "%s: txchan_intr cs[%llx]\n",
	       np->dev->name, (unsigned long long) rp->tx_cs);
}