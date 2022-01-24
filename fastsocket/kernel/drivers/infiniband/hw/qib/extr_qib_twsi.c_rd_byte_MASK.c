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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 

__attribute__((used)) static int FUNC4(struct qib_devdata *dd, int last)
{
	int bit_cntr, data;

	data = 0;

	for (bit_cntr = 7; bit_cntr >= 0; --bit_cntr) {
		data <<= 1;
		FUNC0(dd, 1);
		data |= FUNC1(dd, 0);
		FUNC0(dd, 0);
	}
	if (last) {
		FUNC0(dd, 1);
		FUNC3(dd);
	} else {
		FUNC2(dd, 0);
		FUNC0(dd, 1);
		FUNC0(dd, 0);
		FUNC2(dd, 1);
	}
	return data;
}