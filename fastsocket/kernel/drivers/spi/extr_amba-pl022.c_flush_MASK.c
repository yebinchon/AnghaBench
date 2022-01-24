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
struct pl022 {int /*<<< orphan*/  virtbase; TYPE_1__* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SSP_SR_MASK_BSY ; 
 int SSP_SR_MASK_RNE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int loops_per_jiffy ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pl022 *pl022)
{
	unsigned long limit = loops_per_jiffy << 1;

	FUNC2(&pl022->adev->dev, "flush\n");
	do {
		while (FUNC3(FUNC1(pl022->virtbase)) & SSP_SR_MASK_RNE)
			FUNC3(FUNC0(pl022->virtbase));
	} while ((FUNC3(FUNC1(pl022->virtbase)) & SSP_SR_MASK_BSY) && limit--);
	return limit;
}