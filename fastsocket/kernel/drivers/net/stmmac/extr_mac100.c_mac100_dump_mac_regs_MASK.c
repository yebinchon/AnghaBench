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

/* Variables and functions */
 unsigned long MAC_ADDR_HIGH ; 
 unsigned long MAC_ADDR_LOW ; 
 unsigned long MAC_CONTROL ; 
 unsigned long MAC_FLOW_CTRL ; 
 unsigned long MAC_HASH_HIGH ; 
 unsigned long MAC_HASH_LOW ; 
 unsigned long MAC_VLAN1 ; 
 unsigned long MAC_VLAN2 ; 
 unsigned long MMC_CONTROL ; 
 unsigned long MMC_HIGH_INTR ; 
 unsigned long MMC_HIGH_INTR_MASK ; 
 unsigned long MMC_LOW_INTR ; 
 unsigned long MMC_LOW_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned long ioaddr)
{
	FUNC0("\t----------------------------------------------\n"
	       "\t  MAC100 CSR (base addr = 0x%8x)\n"
	       "\t----------------------------------------------\n",
	       (unsigned int)ioaddr);
	FUNC0("\tcontrol reg (offset 0x%x): 0x%08x\n", MAC_CONTROL,
	       FUNC1(ioaddr + MAC_CONTROL));
	FUNC0("\taddr HI (offset 0x%x): 0x%08x\n ", MAC_ADDR_HIGH,
	       FUNC1(ioaddr + MAC_ADDR_HIGH));
	FUNC0("\taddr LO (offset 0x%x): 0x%08x\n", MAC_ADDR_LOW,
	       FUNC1(ioaddr + MAC_ADDR_LOW));
	FUNC0("\tmulticast hash HI (offset 0x%x): 0x%08x\n",
			MAC_HASH_HIGH, FUNC1(ioaddr + MAC_HASH_HIGH));
	FUNC0("\tmulticast hash LO (offset 0x%x): 0x%08x\n",
			MAC_HASH_LOW, FUNC1(ioaddr + MAC_HASH_LOW));
	FUNC0("\tflow control (offset 0x%x): 0x%08x\n",
		MAC_FLOW_CTRL, FUNC1(ioaddr + MAC_FLOW_CTRL));
	FUNC0("\tVLAN1 tag (offset 0x%x): 0x%08x\n", MAC_VLAN1,
	       FUNC1(ioaddr + MAC_VLAN1));
	FUNC0("\tVLAN2 tag (offset 0x%x): 0x%08x\n", MAC_VLAN2,
	       FUNC1(ioaddr + MAC_VLAN2));
	FUNC0("\n\tMAC management counter registers\n");
	FUNC0("\t MMC crtl (offset 0x%x): 0x%08x\n",
	       MMC_CONTROL, FUNC1(ioaddr + MMC_CONTROL));
	FUNC0("\t MMC High Interrupt (offset 0x%x): 0x%08x\n",
	       MMC_HIGH_INTR, FUNC1(ioaddr + MMC_HIGH_INTR));
	FUNC0("\t MMC Low Interrupt (offset 0x%x): 0x%08x\n",
	       MMC_LOW_INTR, FUNC1(ioaddr + MMC_LOW_INTR));
	FUNC0("\t MMC High Interrupt Mask (offset 0x%x): 0x%08x\n",
	       MMC_HIGH_INTR_MASK, FUNC1(ioaddr + MMC_HIGH_INTR_MASK));
	FUNC0("\t MMC Low Interrupt Mask (offset 0x%x): 0x%08x\n",
	       MMC_LOW_INTR_MASK, FUNC1(ioaddr + MMC_LOW_INTR_MASK));
	return;
}