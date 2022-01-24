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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC1(unsigned iobase)
{
	unsigned	i;
	const unsigned	chip_io_extent = 32;

	for (i = 0; i < chip_io_extent; i += sizeof(u16))
		FUNC0(0, iobase + i);
}