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
struct matrix_keypad_platform_data {int num_row_gpios; int /*<<< orphan*/ * row_gpios; } ;
struct matrix_keypad {struct matrix_keypad_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct matrix_keypad *keypad)
{
	const struct matrix_keypad_platform_data *pdata = keypad->pdata;
	int i;

	for (i = 0; i < pdata->num_row_gpios; i++)
		FUNC0(FUNC1(pdata->row_gpios[i]));
}