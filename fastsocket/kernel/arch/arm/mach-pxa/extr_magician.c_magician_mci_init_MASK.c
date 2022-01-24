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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int IRQF_DISABLED ; 
 int IRQF_SAMPLE_RANDOM ; 
 int /*<<< orphan*/  IRQ_MAGICIAN_SD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*) ; 

__attribute__((used)) static int FUNC1(struct device *dev,
				irq_handler_t detect_irq, void *data)
{
	return FUNC0(IRQ_MAGICIAN_SD, detect_irq,
				IRQF_DISABLED | IRQF_SAMPLE_RANDOM,
				"mmc card detect", data);
}