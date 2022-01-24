#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ bmdma_addr; } ;
struct TYPE_3__ {struct ata_device* device; } ;
struct ata_port {TYPE_2__ ioaddr; struct ata_device* private_data; TYPE_1__ link; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,struct ata_device*) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, unsigned int device)
{
	struct ata_device *adev = &ap->link.device[device];
	if (ap->private_data != adev) {
		FUNC1(0xd6, ap->ioaddr.bmdma_addr + 0x1f);
		FUNC0(ap, device);
		FUNC2(ap, adev);
	}
}