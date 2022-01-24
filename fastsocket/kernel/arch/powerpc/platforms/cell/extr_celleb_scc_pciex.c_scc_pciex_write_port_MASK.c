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
typedef  int u32 ;
struct pci_controller {int /*<<< orphan*/  cfg_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PEXDADRS ; 
 int /*<<< orphan*/  PEXDCMND ; 
 unsigned int PEXDCMND_BYTE_EN_SHIFT ; 
 unsigned int PEXDCMND_IO_WRITE ; 
 int /*<<< orphan*/  PEXDWDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (struct pci_controller*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,int,int,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_controller *phb,
				 unsigned long port, int size, u32 val)
{
	unsigned int byte_enable;
	unsigned int cmd, shift;
	unsigned long addr;
	u32 data;

	FUNC0(((port & 0x3ul) + size) > 4);

	addr = FUNC2(phb, port);
	shift = addr & 0x3ul;
	byte_enable = ((1 << size) - 1) << shift;
	cmd = PEXDCMND_IO_WRITE | (byte_enable << PEXDCMND_BYTE_EN_SHIFT);
	data = (val & (0xFFFFFFFF >> (4 - size) * 8)) << (shift * 8);
	FUNC1(phb->cfg_addr, PEXDADRS, (addr & ~0x3ul));
	FUNC1(phb->cfg_addr, PEXDCMND, cmd);
	FUNC1(phb->cfg_addr, PEXDWDATA, data);

	FUNC3("PCIEX:PIO WRITE:port=0x%lx, addr=%lx, size=%d, val=%x,"
		 " be=%x, cmd=%x, data=%x\n", port, addr, size, val,
		 byte_enable, cmd, data);
}