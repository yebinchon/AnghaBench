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
struct av7110 {int feeding1; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_10 ; 
 int /*<<< orphan*/  MASK_20 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct av7110 *budget)
{
	FUNC2(2, "budget: %p\n", budget);

	if (--budget->feeding1)
		return budget->feeding1;
	FUNC3(budget->dev, MC1, MASK_20);	/* DMA3 off */
	FUNC0(budget->dev, MASK_10);
	FUNC1(budget->dev, MASK_10);
	return 0;
}