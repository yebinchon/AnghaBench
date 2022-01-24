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
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int EINVAL ; 

__attribute__((used)) static void FUNC1(dm_block_t b, int r)
{
	if (r == -EINVAL)
		FUNC0("recursive acquisition of block %llu requested.",
		      (unsigned long long) b);
}