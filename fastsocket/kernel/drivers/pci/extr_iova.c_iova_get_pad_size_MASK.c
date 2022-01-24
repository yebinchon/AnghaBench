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
 unsigned int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(int size, unsigned int limit_pfn)
{
	unsigned int pad_size = 0;
	unsigned int order = FUNC0(size);

	if (order)
		pad_size = (limit_pfn + 1) % (1 << order);

	return pad_size;
}