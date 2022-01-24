#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ extif; TYPE_2__ chipco; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_3__ ssb_bcm47xx ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(unsigned gpio)
{
	if (FUNC0(&ssb_bcm47xx.chipco))
		return FUNC2(ssb_bcm47xx.chipco.dev) + 2;
	else if (FUNC1(&ssb_bcm47xx.extif))
		return FUNC2(ssb_bcm47xx.extif.dev) + 2;
	else
		return -EINVAL;
}