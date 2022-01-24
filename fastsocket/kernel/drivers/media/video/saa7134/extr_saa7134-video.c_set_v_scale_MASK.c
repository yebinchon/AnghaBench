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
struct saa7134_dev {scalar_t__ ctl_mirror; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct saa7134_dev *dev, int task, int yscale)
{
	int val,mirror;

	FUNC7(FUNC4(task), yscale &  0xff);
	FUNC7(FUNC5(task), yscale >> 8);

	mirror = (dev->ctl_mirror) ? 0x02 : 0x00;
	if (yscale < 2048) {
		/* LPI */
		FUNC6("yscale LPI yscale=%d\n",yscale);
		FUNC7(FUNC3(task), 0x00 | mirror);
		FUNC7(FUNC2(task), 0x40);
		FUNC7(FUNC0(task), 0x40);
	} else {
		/* ACM */
		val = 0x40 * 1024 / yscale;
		FUNC6("yscale ACM yscale=%d val=0x%x\n",yscale,val);
		FUNC7(FUNC3(task), 0x01 | mirror);
		FUNC7(FUNC2(task), val);
		FUNC7(FUNC0(task), val);
	}
	FUNC7(FUNC1(task),       0x80);
}