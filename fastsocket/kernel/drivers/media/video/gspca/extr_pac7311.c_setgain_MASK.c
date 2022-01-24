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
struct sd {int gain; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int GAIN_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int gain = GAIN_MAX - sd->gain;

	if (gain < 1)
		gain = 1;
	else if (gain > 245)
		gain = 245;
	FUNC0(gspca_dev, 0xff, 0x04);			/* page 4 */
	FUNC0(gspca_dev, 0x0e, 0x00);
	FUNC0(gspca_dev, 0x0f, gain);

	/* load registers to sensor (Bit 0, auto clear) */
	FUNC0(gspca_dev, 0x11, 0x01);
}