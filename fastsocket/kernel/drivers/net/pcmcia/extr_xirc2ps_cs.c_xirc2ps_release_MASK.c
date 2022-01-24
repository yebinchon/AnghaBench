#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {struct net_device* priv; scalar_t__ win; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ dingo_ccr; scalar_t__ dingo; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 

__attribute__((used)) static void
FUNC4(struct pcmcia_device *link)
{
	FUNC0(0, "release(0x%p)\n", link);

	if (link->win) {
		struct net_device *dev = link->priv;
		local_info_t *local = FUNC2(dev);
		if (local->dingo)
			FUNC1(local->dingo_ccr - 0x0800);
	}
	FUNC3(link);
}