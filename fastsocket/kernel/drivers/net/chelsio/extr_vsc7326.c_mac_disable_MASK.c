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
struct cmac_statistics {int dummy; } ;
struct cmac {int /*<<< orphan*/  stats; int /*<<< orphan*/  adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct cmac *mac, int which)
{
	u32 val;
	int i, port = mac->instance->index;

	/* Reset the port, this also writes the correct WM value */
	FUNC2(mac);

	FUNC4(mac->adapter, FUNC1(port), &val);
	if (which & MAC_DIRECTION_RX)
		val &= ~0x2;
	if (which & MAC_DIRECTION_TX)
		val &= ~0x1;
	FUNC5(mac->adapter, FUNC1(port), val);
	FUNC4(mac->adapter, FUNC1(port), &val);

	/* Clear stats */
	for (i = 0; i <= 0x3a; ++i)
		FUNC5(mac->adapter, FUNC0(4, port, i), 0);

	/* Clear sofware counters */
	FUNC3(&mac->stats, 0, sizeof(struct cmac_statistics));

	return 0;
}