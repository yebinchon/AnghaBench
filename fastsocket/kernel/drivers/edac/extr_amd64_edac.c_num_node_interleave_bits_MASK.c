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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(unsigned intlv_en)
{
	static const int intlv_shift_table[] = { 0, 1, 0, 2, 0, 0, 0, 3 };
	int n;

	FUNC0(intlv_en > 7);
	n = intlv_shift_table[intlv_en];
	return n;
}