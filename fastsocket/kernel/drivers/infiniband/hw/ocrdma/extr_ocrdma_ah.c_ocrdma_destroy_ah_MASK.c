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
struct ocrdma_ah {int /*<<< orphan*/  dev; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 struct ocrdma_ah* FUNC0 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_ah*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ocrdma_ah*) ; 

int FUNC3(struct ib_ah *ibah)
{
	struct ocrdma_ah *ah = FUNC0(ibah);
	FUNC2(ah->dev, ah);
	FUNC1(ah);
	return 0;
}