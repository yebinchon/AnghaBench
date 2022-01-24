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
 int /*<<< orphan*/  PLDI2CCND ; 
 int /*<<< orphan*/  PLDI2CDATA ; 
 int /*<<< orphan*/  PLDI2CSTEN ; 
 int PLDI2CSTEN_STEN ; 
 int /*<<< orphan*/  PLDI2CSTS ; 
 int PLDI2CSTS_BB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(int n, unsigned long addr, unsigned long data1, unsigned long data2,
	 unsigned long data3)
{
	int i;

	/* Slave Address */
	FUNC1(addr, PLDI2CDATA);
	FUNC4();

	/* Start */
	FUNC1(1, PLDI2CCND);
	FUNC3();

	/* Transfer data 1 */
	FUNC1(data1, PLDI2CDATA);
	FUNC4();
	FUNC1(PLDI2CSTEN_STEN, PLDI2CSTEN);
	FUNC3();

	/* Transfer data 2 */
	FUNC1(data2, PLDI2CDATA);
	FUNC4();
	FUNC1(PLDI2CSTEN_STEN, PLDI2CSTEN);
	FUNC3();

	if (n == 3) {
		/* Transfer data 3 */
		FUNC1(data3, PLDI2CDATA);
		FUNC4();
		FUNC1(PLDI2CSTEN_STEN, PLDI2CSTEN);
		FUNC3();
	}

	/* Stop */
	for (i = 0; i < 100; i++)
		FUNC2();
	FUNC1(2, PLDI2CCND);
	FUNC1(2, PLDI2CCND);

	while (FUNC0(PLDI2CSTS) & PLDI2CSTS_BB)
		FUNC2();
}