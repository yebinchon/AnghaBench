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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(struct device *dev, size_t size, void *cpu_addr, dma_addr_t handle)
{
	if (FUNC0(dev, FUNC1(size), cpu_addr))
		return;
	FUNC2(cpu_addr);
}