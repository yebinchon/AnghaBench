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
typedef  unsigned int u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int*) ; 

__attribute__((used)) static unsigned FUNC2(u8 *str, int len)
{
	unsigned val = 0;

	if (!len)
		len = FUNC1(str);

	for (; len && FUNC0(*str); ++str, --len)
		val = (val * 10) + (*str - (unsigned) '0');

	return val;
}