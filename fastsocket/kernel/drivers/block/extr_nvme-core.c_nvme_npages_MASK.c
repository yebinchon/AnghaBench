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
 int FUNC0 (int,unsigned int) ; 
 unsigned int PAGE_SIZE ; 

__attribute__((used)) static int FUNC1(unsigned size)
{
	unsigned nprps = FUNC0(size + PAGE_SIZE, PAGE_SIZE);
	return FUNC0(8 * nprps, PAGE_SIZE - 8);
}