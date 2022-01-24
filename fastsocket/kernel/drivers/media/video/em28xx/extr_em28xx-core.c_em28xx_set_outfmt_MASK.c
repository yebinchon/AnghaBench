#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct em28xx {int vinmode; int vinctl; int vbi_width; int vbi_height; int norm; TYPE_1__* format; } ;
struct TYPE_2__ {int reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_R10_VINMODE ; 
 int /*<<< orphan*/  EM28XX_R11_VINCTRL ; 
 int /*<<< orphan*/  EM28XX_R27_OUTFMT ; 
 int /*<<< orphan*/  EM28XX_R34_VBI_START_H ; 
 int /*<<< orphan*/  EM28XX_R35_VBI_START_V ; 
 int /*<<< orphan*/  EM28XX_R36_VBI_WIDTH ; 
 int /*<<< orphan*/  EM28XX_R37_VBI_HEIGHT ; 
 int EM28XX_VINCTRL_VBI_RAW ; 
 int V4L2_STD_525_60 ; 
 int V4L2_STD_625_50 ; 
 int FUNC0 (struct em28xx*) ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct em28xx*,int /*<<< orphan*/ ,int,int) ; 

int FUNC3(struct em28xx *dev)
{
	int ret;
	u8 vinctrl;

	ret = FUNC2(dev, EM28XX_R27_OUTFMT,
				dev->format->reg | 0x20, 0xff);
	if (ret < 0)
			return ret;

	ret = FUNC1(dev, EM28XX_R10_VINMODE, dev->vinmode);
	if (ret < 0)
		return ret;

	vinctrl = dev->vinctl;
	if (FUNC0(dev) == 1) {
		vinctrl |= EM28XX_VINCTRL_VBI_RAW;
		FUNC1(dev, EM28XX_R34_VBI_START_H, 0x00);
		FUNC1(dev, EM28XX_R36_VBI_WIDTH, dev->vbi_width/4);
		FUNC1(dev, EM28XX_R37_VBI_HEIGHT, dev->vbi_height);
		if (dev->norm & V4L2_STD_525_60) {
			/* NTSC */
			FUNC1(dev, EM28XX_R35_VBI_START_V, 0x09);
		} else if (dev->norm & V4L2_STD_625_50) {
			/* PAL */
			FUNC1(dev, EM28XX_R35_VBI_START_V, 0x07);
		}
	}

	return FUNC1(dev, EM28XX_R11_VINCTRL, vinctrl);
}