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
struct TYPE_3__ {int wanted; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ imm_struct ;

/* Variables and functions */
 int /*<<< orphan*/  arbitration_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(imm_struct *dev)
{
	unsigned long flags;
	int wanted;
	FUNC1(&arbitration_lock, flags);
	wanted = dev->wanted;
	dev->wanted = 0;
	FUNC2(&arbitration_lock, flags);
	if (!wanted)
		FUNC0(dev->dev);
}