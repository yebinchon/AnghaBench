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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

void FUNC3(struct device *dev, long t)
{
	if (!dev || t < -1) {
		FUNC0(1);
		return;
	};

	if (t == -1)
		FUNC2("OMAP PM: remove max DMA latency constraint: "
			 "dev %s\n", FUNC1(dev));
	else
		FUNC2("OMAP PM: add max DMA latency constraint: "
			 "dev %s, t = %ld usec\n", FUNC1(dev), t);

	/*
	 * For current Linux PM QOS params, this code should scan the
	 * list of maximum CPU and DMA latencies and select the
	 * smallest, then set cpu_dma_latency pm_qos_param
	 * accordingly.
	 *
	 * For future Linux PM QOS params, with separate CPU and DMA
	 * latency params, this code should just set the dma_latency param.
	 *
	 * TI CDP code can call constraint_set here.
	 */

}