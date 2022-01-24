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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  reg_sram ;
typedef  int /*<<< orphan*/  reg_flash ;
typedef  int /*<<< orphan*/  fpga ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int FUNC2 (void*,char*,...) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	void *devp, *sram;
	u32 reg_flash[3] = {0x0, 0x0, 0x80000};
	u32 reg_sram[3] = {0x0, 0x0, 0x80000};
	u8 *fpga;
	u8 fpga_brds1 = 0x0;

	devp = FUNC1("/plb/ebc/fpga");
	if (!devp)
		FUNC0("Couldn't locate FPGA node\n\r");

	if (FUNC2(devp, "virtual-reg", &fpga, sizeof(fpga)) != sizeof(fpga))
		FUNC0("no virtual-reg property\n\r");

	fpga_brds1 = FUNC3(fpga);

	devp = FUNC1("/plb/ebc/flash");
	if (!devp)
		FUNC0("Couldn't locate flash node\n\r");

	if (FUNC2(devp, "reg", reg_flash, sizeof(reg_flash)) != sizeof(reg_flash))
		FUNC0("flash reg property has unexpected size\n\r");

	sram = FUNC1("/plb/ebc/sram");
	if (!sram)
		FUNC0("Couldn't locate sram node\n\r");

	if (FUNC2(sram, "reg", reg_sram, sizeof(reg_sram)) != sizeof(reg_sram))
		FUNC0("sram reg property has unexpected size\n\r");

	if (fpga_brds1 & 0x1) {
		reg_flash[1] ^= 0x80000;
		reg_sram[1] ^= 0x80000;
	}

	FUNC4(devp, "reg", reg_flash, sizeof(reg_flash));
	FUNC4(sram, "reg", reg_sram, sizeof(reg_sram));
}