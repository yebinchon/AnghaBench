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
struct mmc_test_card {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mmc_test_card*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct mmc_test_card*,int) ; 

__attribute__((used)) static int FUNC3(struct mmc_test_card *test)
{
	int ret, i;

	ret = FUNC2(test, 512);
	if (ret)
		return ret;

	FUNC0(test->buffer, 0, 512);

	for (i = 0;i < BUFFER_SIZE / 512;i++) {
		ret = FUNC1(test, test->buffer, i * 512, 512, 1);
		if (ret)
			return ret;
	}

	return 0;
}