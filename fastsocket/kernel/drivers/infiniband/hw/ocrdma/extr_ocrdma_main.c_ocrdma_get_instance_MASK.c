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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocrdma_dev_id ; 

__attribute__((used)) static int FUNC2(void)
{
	int instance = 0;

	/* Assign an unused number */
	if (!FUNC1(&ocrdma_dev_id, GFP_KERNEL))
		return -1;
	if (FUNC0(&ocrdma_dev_id, NULL, &instance))
		return -1;
	return instance;
}