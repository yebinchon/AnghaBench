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
typedef  int u8 ;
typedef  int u32 ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUP_BLK_PLL2 ; 
 int /*<<< orphan*/  SUP_BLK_PWRDN ; 
 int /*<<< orphan*/  SUP_BLK_TUNE1 ; 
 int /*<<< orphan*/  SUP_BLK_TUNE2 ; 
 int /*<<< orphan*/  SUP_BLK_TUNE3 ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct cx231xx *dev, u32 ref_count)
{
	int status = 0;
	u8 temp = 0;
	u8 afe_power_status = 0;
	int i = 0;

	/* super block initialize */
	temp = (u8) (ref_count & 0xff);
	status = FUNC1(dev, SUP_BLK_TUNE2, temp);
	if (status < 0)
		return status;

	status = FUNC0(dev, SUP_BLK_TUNE2, &afe_power_status);
	if (status < 0)
		return status;

	temp = (u8) ((ref_count & 0x300) >> 8);
	temp |= 0x40;
	status = FUNC1(dev, SUP_BLK_TUNE1, temp);
	if (status < 0)
		return status;

	status = FUNC1(dev, SUP_BLK_PLL2, 0x0f);
	if (status < 0)
		return status;

	/* enable pll     */
	while (afe_power_status != 0x18) {
		status = FUNC1(dev, SUP_BLK_PWRDN, 0x18);
		if (status < 0) {
			FUNC2(
			": Init Super Block failed in send cmd\n");
			break;
		}

		status = FUNC0(dev, SUP_BLK_PWRDN, &afe_power_status);
		afe_power_status &= 0xff;
		if (status < 0) {
			FUNC2(
			": Init Super Block failed in receive cmd\n");
			break;
		}
		i++;
		if (i == 10) {
			FUNC2(
			": Init Super Block force break in loop !!!!\n");
			status = -1;
			break;
		}
	}

	if (status < 0)
		return status;

	/* start tuning filter */
	status = FUNC1(dev, SUP_BLK_TUNE3, 0x40);
	if (status < 0)
		return status;

	FUNC3(5);

	/* exit tuning */
	status = FUNC1(dev, SUP_BLK_TUNE3, 0x00);

	return status;
}