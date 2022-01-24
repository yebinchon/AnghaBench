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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NDISKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * data ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int*) ; 

__attribute__((used)) static int FUNC4(void)
{
	int err = 0;
	int tests = 0;
	int i;

	for (i = 0; i < NDISKS+3; i++) {
		data[i] = FUNC0(GFP_KERNEL);
		if (!data[i]) {
			while (i--)
				FUNC2(data[i]);
			return -ENOMEM;
		}
	}

	/* the 4-disk and 5-disk cases are special for the recovery code */
	if (NDISKS > 4)
		err += FUNC3(4, &tests);
	if (NDISKS > 5)
		err += FUNC3(5, &tests);
	err += FUNC3(NDISKS, &tests);

	FUNC1("\n");
	FUNC1("complete (%d tests, %d failure%s)\n",
	   tests, err, err == 1 ? "" : "s");

	for (i = 0; i < NDISKS+3; i++)
		FUNC2(data[i]);

	return 0;
}