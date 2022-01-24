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
struct ipath_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  i2c_line_high ; 
 int /*<<< orphan*/  i2c_line_low ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ipath_devdata *dd)
{
	int bit_cntr, data;

	data = 0;

	for (bit_cntr = 7; bit_cntr >= 0; --bit_cntr) {
		data <<= 1;
		FUNC0(dd, i2c_line_high);
		data |= FUNC1(dd, 0);
		FUNC0(dd, i2c_line_low);
	}
	return data;
}