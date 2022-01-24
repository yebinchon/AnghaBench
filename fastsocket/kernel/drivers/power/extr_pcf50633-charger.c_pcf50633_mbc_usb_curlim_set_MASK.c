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
struct pcf50633_mbc {int usb_active; int /*<<< orphan*/  usb; } ;
struct pcf50633 {int /*<<< orphan*/  dev; int /*<<< orphan*/  mbc_pdev; } ;

/* Variables and functions */
 int PCF50633_MBCC1_CHGENA ; 
 int PCF50633_MBCC1_RESUME ; 
 int PCF50633_MBCC7_USB_1000mA ; 
 int PCF50633_MBCC7_USB_100mA ; 
 int PCF50633_MBCC7_USB_500mA ; 
 int PCF50633_MBCC7_USB_MASK ; 
 int PCF50633_MBCC7_USB_SUSPEND ; 
 int PCF50633_MBCS2_MBC_BAT_FULL ; 
 int PCF50633_MBCS2_MBC_MASK ; 
 int /*<<< orphan*/  PCF50633_REG_MBCC1 ; 
 int /*<<< orphan*/  PCF50633_REG_MBCC7 ; 
 int /*<<< orphan*/  PCF50633_REG_MBCS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct pcf50633*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pcf50633*,int /*<<< orphan*/ ,int,int) ; 
 struct pcf50633_mbc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct pcf50633 *pcf, int ma)
{
	struct pcf50633_mbc *mbc = FUNC4(pcf->mbc_pdev);
	int ret = 0;
	u8 bits;
	int charging_start = 1;
	u8 mbcs2, chgmod;

	if (ma >= 1000)
		bits = PCF50633_MBCC7_USB_1000mA;
	else if (ma >= 500)
		bits = PCF50633_MBCC7_USB_500mA;
	else if (ma >= 100)
		bits = PCF50633_MBCC7_USB_100mA;
	else {
		bits = PCF50633_MBCC7_USB_SUSPEND;
		charging_start = 0;
	}

	ret = FUNC3(pcf, PCF50633_REG_MBCC7,
					PCF50633_MBCC7_USB_MASK, bits);
	if (ret)
		FUNC0(pcf->dev, "error setting usb curlim to %d mA\n", ma);
	else
		FUNC1(pcf->dev, "usb curlim to %d mA\n", ma);

	/* Manual charging start */
	mbcs2 = FUNC2(pcf, PCF50633_REG_MBCS2);
	chgmod = (mbcs2 & PCF50633_MBCS2_MBC_MASK);

	/* If chgmod == BATFULL, setting chgena has no effect.
	 * We need to set resume instead.
	 */
	if (chgmod != PCF50633_MBCS2_MBC_BAT_FULL)
		FUNC3(pcf, PCF50633_REG_MBCC1,
				PCF50633_MBCC1_CHGENA, PCF50633_MBCC1_CHGENA);
	else
		FUNC3(pcf, PCF50633_REG_MBCC1,
				PCF50633_MBCC1_RESUME, PCF50633_MBCC1_RESUME);

	mbc->usb_active = charging_start;

	FUNC5(&mbc->usb);

	return ret;
}