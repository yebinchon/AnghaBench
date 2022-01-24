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
 unsigned long ENI2C0 ; 
 unsigned long ENI2C1 ; 
 unsigned long ENSPI ; 
 unsigned long GPIOG0TO1 ; 
 unsigned long GPIOG2TO3 ; 
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

	if (FUNC6(dev_id, "nuc900-spi") == 0) {
		mfpen &= ~(GPIOG0TO1 | GPIOG2TO3);
		mfpen |= ENSPI;/*enable spi*/
	} else if (FUNC6(dev_id, "nuc900-i2c0") == 0) {
		mfpen &= ~(GPIOG0TO1);
		mfpen |= ENI2C0;/*enable i2c0*/
	} else if (FUNC6(dev_id, "nuc900-i2c1") == 0) {
		mfpen &= ~(GPIOG2TO3);
		mfpen |= ENI2C1;/*enable i2c1*/
	} else {
		mfpen &= ~(GPIOG0TO1 | GPIOG2TO3);/*GPIOG[3:0]*/
	}

	FUNC2(mfpen, REG_MFSEL);

	FUNC5(&mfp_mutex);
}