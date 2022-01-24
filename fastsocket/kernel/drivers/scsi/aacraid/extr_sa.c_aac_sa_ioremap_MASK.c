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
struct TYPE_2__ {int /*<<< orphan*/ * sa; } ;
struct aac_dev {int /*<<< orphan*/ * base; int /*<<< orphan*/  base_start; TYPE_1__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct aac_dev * dev, u32 size)
{
	if (!size) {
		FUNC1(dev->regs.sa);
		return 0;
	}
	dev->base = dev->regs.sa = FUNC0(dev->base_start, size);
	return (dev->base == NULL) ? -1 : 0;
}