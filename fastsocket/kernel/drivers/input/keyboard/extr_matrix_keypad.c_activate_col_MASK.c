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
struct matrix_keypad_platform_data {scalar_t__ col_scan_delay_us; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix_keypad_platform_data const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(const struct matrix_keypad_platform_data *pdata,
			 int col, bool on)
{
	FUNC0(pdata, col, on);

	if (on && pdata->col_scan_delay_us)
		FUNC1(pdata->col_scan_delay_us);
}