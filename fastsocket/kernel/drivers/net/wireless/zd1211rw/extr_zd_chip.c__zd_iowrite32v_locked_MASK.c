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
struct zd_ioreq32 {int dummy; } ;
struct zd_chip {int /*<<< orphan*/  usb; } ;

/* Variables and functions */
 int FUNC0 (struct zd_chip*,struct zd_ioreq32 const*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct zd_chip *chip, const struct zd_ioreq32 *ioreqs,
			  unsigned int count)
{
	int r;

	FUNC2(&chip->usb);
	r = FUNC0(chip, ioreqs, count);
	if (r) {
		FUNC1(&chip->usb, 0);
		return r;
	}
	return FUNC1(&chip->usb, 50 /* ms */);
}