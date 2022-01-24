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
typedef  void* u32 ;
struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;
typedef  void* irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct irq_host *h, struct device_node *ct,
			  u32 *intspec, unsigned int intsize,
			  irq_hw_number_t *out_hwirq, unsigned int *out_type)

{
	/* UIC intspecs must have 2 cells */
	FUNC0(intsize != 2);
	*out_hwirq = intspec[0];
	*out_type = intspec[1];
	return 0;
}