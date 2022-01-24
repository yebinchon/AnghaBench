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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer_divisor_1; int /*<<< orphan*/  timer_divisor_2; } ;

/* Variables and functions */
 int PCI9111_8254_BINARY_COUNTER ; 
 int PCI9111_8254_COUNTER_0 ; 
 int PCI9111_8254_COUNTER_1 ; 
 int PCI9111_8254_COUNTER_2 ; 
 int PCI9111_8254_MODE_0 ; 
 int PCI9111_8254_MODE_2 ; 
 int PCI9111_8254_READ_LOAD_LSB_MSB ; 
 TYPE_1__* dev_private ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	FUNC0(PCI9111_8254_COUNTER_0 |
				 PCI9111_8254_READ_LOAD_LSB_MSB |
				 PCI9111_8254_MODE_0 |
				 PCI9111_8254_BINARY_COUNTER);

	FUNC0(PCI9111_8254_COUNTER_1 |
				 PCI9111_8254_READ_LOAD_LSB_MSB |
				 PCI9111_8254_MODE_2 |
				 PCI9111_8254_BINARY_COUNTER);

	FUNC0(PCI9111_8254_COUNTER_2 |
				 PCI9111_8254_READ_LOAD_LSB_MSB |
				 PCI9111_8254_MODE_2 |
				 PCI9111_8254_BINARY_COUNTER);

	FUNC3(1);

	FUNC2(dev_private->timer_divisor_2);
	FUNC1(dev_private->timer_divisor_1);
}