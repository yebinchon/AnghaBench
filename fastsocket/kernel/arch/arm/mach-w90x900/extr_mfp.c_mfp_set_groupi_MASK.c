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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long GPSELEI0 ; 
 unsigned long GPSELEI1 ; 
 int /*<<< orphan*/  REG_MFSEL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  mfp_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

void FUNC7(struct device *dev)
{
	unsigned long mfpen;
	const char *dev_id;

	FUNC0(!dev);

	FUNC4(&mfp_mutex);

	dev_id = FUNC3(dev);

	mfpen = FUNC1(REG_MFSEL);

	mfpen &= ~GPSELEI1;/*default gpio16*/

	if (FUNC6(dev_id, "nuc900-wdog") == 0)
		mfpen |= GPSELEI1;/*enable wdog*/
	else if (FUNC6(dev_id, "nuc900-atapi") == 0)
		mfpen |= GPSELEI0;/*enable atapi*/
	else if (FUNC6(dev_id, "nuc900-keypad") == 0)
		mfpen &= ~GPSELEI0;/*enable keypad*/

	FUNC2(mfpen, REG_MFSEL);

	FUNC5(&mfp_mutex);
}