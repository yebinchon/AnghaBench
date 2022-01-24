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
typedef  unsigned int u16 ;
struct input_dev {int dummy; } ;
struct ad7879 {unsigned int* conversion_data; unsigned int x_plate_ohms; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 size_t AD7879_SEQ_XPOS ; 
 size_t AD7879_SEQ_YPOS ; 
 size_t AD7879_SEQ_Z1 ; 
 size_t AD7879_SEQ_Z2 ; 
 unsigned int MAX_12BIT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ad7879 *ts)
{
	struct input_dev *input_dev = ts->input;
	unsigned Rt;
	u16 x, y, z1, z2;

	x = ts->conversion_data[AD7879_SEQ_XPOS] & MAX_12BIT;
	y = ts->conversion_data[AD7879_SEQ_YPOS] & MAX_12BIT;
	z1 = ts->conversion_data[AD7879_SEQ_Z1] & MAX_12BIT;
	z2 = ts->conversion_data[AD7879_SEQ_Z2] & MAX_12BIT;

	/*
	 * The samples processed here are already preprocessed by the AD7879.
	 * The preprocessing function consists of a median and an averaging filter.
	 * The combination of these two techniques provides a robust solution,
	 * discarding the spurious noise in the signal and keeping only the data of interest.
	 * The size of both filters is programmable. (dev.platform_data, see linux/spi/ad7879.h)
	 * Other user-programmable conversion controls include variable acquisition time,
	 * and first conversion delay. Up to 16 averages can be taken per conversion.
	 */

	if (FUNC2(x && z1)) {
		/* compute touch pressure resistance using equation #1 */
		Rt = (z2 - z1) * x * ts->x_plate_ohms;
		Rt /= z1;
		Rt = (Rt + 2047) >> 12;

		FUNC0(input_dev, ABS_X, x);
		FUNC0(input_dev, ABS_Y, y);
		FUNC0(input_dev, ABS_PRESSURE, Rt);
		FUNC1(input_dev);
	}
}