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
struct pwc_device {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct pwc_device*,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (struct pwc_device*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (struct pwc_device*,unsigned int,unsigned int) ; 

unsigned int FUNC5(struct pwc_device *pdev, unsigned int index, unsigned int size)
{
	unsigned int ret;

	if (FUNC0(pdev->type)) {
		ret = FUNC3(pdev, index, size);

	} else if (FUNC1(pdev->type)) {
		ret = FUNC2(pdev, index, size);

	} else {
		ret = FUNC4(pdev, index, size);
	}

	return ret;
}