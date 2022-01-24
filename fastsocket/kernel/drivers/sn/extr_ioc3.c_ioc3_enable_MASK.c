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
struct ioc3_submodule {unsigned int irq_mask; } ;
struct ioc3_driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOC3_W_IES ; 
 int /*<<< orphan*/  FUNC0 (struct ioc3_driver_data*,unsigned int,int /*<<< orphan*/ ) ; 

void FUNC1(struct ioc3_submodule *is,
				struct ioc3_driver_data *idd, unsigned int irqs)
{
	FUNC0(idd, irqs & is->irq_mask, IOC3_W_IES);
}