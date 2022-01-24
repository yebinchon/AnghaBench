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
struct ata_device {int /*<<< orphan*/  ering; int /*<<< orphan*/  class; TYPE_1__* link; } ;
struct TYPE_2__ {int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int ATA_DNXFER_FORCE_PIO0 ; 
 int ATA_DNXFER_QUIET ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ata_device *dev)
{
	if (!FUNC1(dev))
		return;

	if (FUNC5(dev->link->ap))
		FUNC2(dev, KERN_WARNING, "disabled\n");
	FUNC0(dev);
	FUNC3(dev, ATA_DNXFER_FORCE_PIO0 | ATA_DNXFER_QUIET);
	dev->class++;

	/* From now till the next successful probe, ering is used to
	 * track probe failures.  Clear accumulated device error info.
	 */
	FUNC4(&dev->ering);
}