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
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,int) ; 

__wsum
FUNC2 (const void *src, void *dst, int len, __wsum sum)
{
	sum = FUNC0(src, len, sum);
	FUNC1(dst, src, len);

	return sum;
}