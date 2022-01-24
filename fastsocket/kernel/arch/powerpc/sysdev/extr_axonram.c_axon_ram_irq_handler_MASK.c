#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct axon_ram_bank* platform_data; } ;
struct of_device {TYPE_1__ dev; } ;
struct axon_ram_bank {int /*<<< orphan*/  ecc_counter; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 

__attribute__((used)) static irqreturn_t
FUNC2(int irq, void *dev)
{
	struct of_device *device = dev;
	struct axon_ram_bank *bank = device->dev.platform_data;

	FUNC0(!bank);

	FUNC1(&device->dev, "Correctable memory error occured\n");
	bank->ecc_counter++;
	return IRQ_HANDLED;
}