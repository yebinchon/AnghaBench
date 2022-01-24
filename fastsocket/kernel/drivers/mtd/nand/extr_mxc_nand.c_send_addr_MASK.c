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
typedef  int /*<<< orphan*/  uint16_t ;
struct mxc_nand_host {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL3 ; 
 int /*<<< orphan*/  NFC_ADDR ; 
 scalar_t__ NFC_CONFIG2 ; 
 scalar_t__ NFC_FLASH_ADDR ; 
 int /*<<< orphan*/  TROP_US_DELAY ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_nand_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mxc_nand_host *host, uint16_t addr, int islast)
{
	FUNC0(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);

	FUNC2(addr, host->regs + NFC_FLASH_ADDR);
	FUNC2(NFC_ADDR, host->regs + NFC_CONFIG2);

	/* Wait for operation to complete */
	FUNC1(host, TROP_US_DELAY, addr, islast);
}