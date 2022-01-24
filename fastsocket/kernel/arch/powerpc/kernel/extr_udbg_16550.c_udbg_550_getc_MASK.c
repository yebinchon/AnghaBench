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
struct TYPE_2__ {int /*<<< orphan*/  rbr; int /*<<< orphan*/  lsr; } ;

/* Variables and functions */
 int LSR_DR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* udbg_comport ; 

__attribute__((used)) static int FUNC1(void)
{
	if (udbg_comport) {
		while ((FUNC0(&udbg_comport->lsr) & LSR_DR) == 0)
			/* wait for char */;
		return FUNC0(&udbg_comport->rbr);
	}
	return -1;
}