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
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static void
FUNC1(int *burst, int *lwm)
{
	unsigned int fifo_size, burst_size, graphics_lwm;

	fifo_size = 2048;
	burst_size = 512;
	graphics_lwm = fifo_size - burst_size;

	*burst = FUNC0(burst_size >> 5);
	*lwm = graphics_lwm >> 3;
}