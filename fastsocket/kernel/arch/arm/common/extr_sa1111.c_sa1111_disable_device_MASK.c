#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sa1111_dev {unsigned int skpcr_mask; } ;
struct sa1111 {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SA1111_SKPCR ; 
 struct sa1111* FUNC0 (struct sa1111_dev*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct sa1111_dev *sadev)
{
	struct sa1111 *sachip = FUNC0(sadev);
	unsigned long flags;
	unsigned int val;

	FUNC3(&sachip->lock, flags);
	val = FUNC1(sachip->base + SA1111_SKPCR);
	FUNC2(val & ~sadev->skpcr_mask, sachip->base + SA1111_SKPCR);
	FUNC4(&sachip->lock, flags);
}