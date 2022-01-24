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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd, u8 data)
{
	int bit_cntr;
	u8 bit;

	for (bit_cntr = 7; bit_cntr >= 0; bit_cntr--) {
		bit = (data >> bit_cntr) & 1;
		FUNC2(dd, bit);
		FUNC1(dd, 1);
		FUNC1(dd, 0);
	}
	return (!FUNC0(dd)) ? 1 : 0;
}