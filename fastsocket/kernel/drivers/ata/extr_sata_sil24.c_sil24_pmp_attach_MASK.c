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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct ata_port {int /*<<< orphan*/  flags; TYPE_2__ link; } ;
struct TYPE_3__ {int /*<<< orphan*/ * gscr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_FLAG_NCQ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap)
{
	u32 *gscr = ap->link.device->gscr;

	FUNC3(ap, 1);
	FUNC4(ap);

	if (FUNC2(gscr) == 0x11ab &&
	    FUNC1(gscr) == 0x4140) {
		FUNC0(ap, KERN_INFO,
			"disabling NCQ support due to sil24-mv4140 quirk\n");
		ap->flags &= ~ATA_FLAG_NCQ;
	}
}