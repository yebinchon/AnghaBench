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
typedef  int /*<<< orphan*/  u8 ;
struct ata_ioports {int /*<<< orphan*/  ctl_addr; } ;
struct ata_port {TYPE_1__* ops; int /*<<< orphan*/  ctl; int /*<<< orphan*/  last_ctl; struct ata_ioports ioaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sff_irq_clear ) (struct ata_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_NIEN ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 

__attribute__((used)) static u8 FUNC3 (struct ata_port *ap)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;
	u8 tmp;

	ap->ctl &= ~ATA_NIEN;
	ap->last_ctl = ap->ctl;

	FUNC1(ioaddr->ctl_addr, ap->ctl);
	tmp = FUNC0(ap);

	ap->ops->sff_irq_clear(ap);

	return tmp;
}