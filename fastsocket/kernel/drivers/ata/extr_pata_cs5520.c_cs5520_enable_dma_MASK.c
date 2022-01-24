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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;
struct ata_device {int devno; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *adev)
{
	/* Set the DMA enable/disable flag */
	u8 reg = FUNC0(ap->ioaddr.bmdma_addr + 0x02);
	reg |= 1<<(adev->devno + 5);
	FUNC1(reg, ap->ioaddr.bmdma_addr + 0x02);
}