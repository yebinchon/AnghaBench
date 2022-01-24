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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(u8 *src, u8 *dest)
{
	int i;

	for (i = 0; i <= 3; i++)
		FUNC0(dest + i, src + (3 - i), 1);

	for (i = 0; i <= 1; i++)
		FUNC0(dest + 4 + i, src + (5 - i), 1);

	for (i = 0; i <= 1; i++)
		FUNC0(dest + 6 + i, src + (7 - i), 1);

	FUNC0(dest + 8, src + 8, 8);
}