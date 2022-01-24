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
typedef  unsigned int u32 ;
struct pci_controller {int /*<<< orphan*/  cfg_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PEXDADRS ; 
 int /*<<< orphan*/  PEXDCMND ; 
 unsigned int PEXDCMND_BYTE_EN_SHIFT ; 
 unsigned int PEXDCMND_IO_READ ; 
 int /*<<< orphan*/  PEXDRDATA ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC3 (struct pci_controller*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static u32 FUNC5(struct pci_controller *phb,
			       unsigned long port, int size)
{
	unsigned int byte_enable;
	unsigned int cmd, shift;
	unsigned long addr;
	u32 data, ret;

	FUNC0(((port & 0x3ul) + size) > 4);

	addr = FUNC3(phb, port);
	shift = addr & 0x3ul;
	byte_enable = ((1 << size) - 1) << shift;
	cmd = PEXDCMND_IO_READ | (byte_enable << PEXDCMND_BYTE_EN_SHIFT);
	FUNC2(phb->cfg_addr, PEXDADRS, (addr & ~0x3ul));
	FUNC2(phb->cfg_addr, PEXDCMND, cmd);
	data = FUNC1(phb->cfg_addr, PEXDRDATA);
	ret = (data >> (shift * 8)) & (0xFFFFFFFF >> ((4 - size) * 8));

	FUNC4("PCIEX:PIO READ:port=0x%lx, addr=0x%lx, size=%d, be=%x,"
		 " cmd=%x, data=%x, ret=%x\n", port, addr, size, byte_enable,
		 cmd, data, ret);

	return ret;
}