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
struct zd_ioreq32 {int /*<<< orphan*/  addr; } ;
struct zd_chip {int /*<<< orphan*/  usb; } ;

/* Variables and functions */
 unsigned int USB_MAX_IOWRITE32_COUNT ; 
 int FUNC0 (struct zd_chip*,struct zd_ioreq32 const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct zd_chip *chip,
	          const struct zd_ioreq32 *ioreqs, unsigned int count)
{
	int r;
	unsigned int i, j, t, max;

	FUNC4(&chip->usb);

	for (i = 0; i < count; i += j + t) {
		t = 0;
		max = count-i;
		if (max > USB_MAX_IOWRITE32_COUNT)
			max = USB_MAX_IOWRITE32_COUNT;
		for (j = 0; j < max; j++) {
			if (!ioreqs[i+j].addr) {
				t = 1;
				break;
			}
		}

		r = FUNC0(chip, &ioreqs[i], j);
		if (r) {
			FUNC3(&chip->usb, 0);
			FUNC1(FUNC2(chip),
				"error _zd_iowrite32v_locked."
				" Error number %d\n", r);
			return r;
		}
	}

	return FUNC3(&chip->usb, 50 /* ms */);
}