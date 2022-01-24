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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static uint32_t FUNC1(unsigned nr_cells)
{
	uint32_t n = 128;

	nr_cells /= 4;
	nr_cells = FUNC0(nr_cells, 8192u);

	while (n < nr_cells)
		n <<= 1;

	return n;
}