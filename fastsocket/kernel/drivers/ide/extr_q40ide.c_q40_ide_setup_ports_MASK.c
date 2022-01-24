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
struct TYPE_2__ {void* ctl_addr; void* status_addr; void* device_addr; void* lbah_addr; void* lbam_addr; void* lbal_addr; void* nsect_addr; void* error_addr; int /*<<< orphan*/  data_addr; } ;
struct ide_hw {int irq; TYPE_1__ io_ports; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ide_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ide_hw *hw, unsigned long base, int irq)
{
	FUNC2(hw, 0, sizeof(*hw));
	/* BIG FAT WARNING: 
	   assumption: only DATA port is ever used in 16 bit mode */
	hw->io_ports.data_addr = FUNC1(base);
	hw->io_ports.error_addr = FUNC0(base + 1);
	hw->io_ports.nsect_addr = FUNC0(base + 2);
	hw->io_ports.lbal_addr = FUNC0(base + 3);
	hw->io_ports.lbam_addr = FUNC0(base + 4);
	hw->io_ports.lbah_addr = FUNC0(base + 5);
	hw->io_ports.device_addr = FUNC0(base + 6);
	hw->io_ports.status_addr = FUNC0(base + 7);
	hw->io_ports.ctl_addr = FUNC0(base + 0x206);

	hw->irq = irq;
}