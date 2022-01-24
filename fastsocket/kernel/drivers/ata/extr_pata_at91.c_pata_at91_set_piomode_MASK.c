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
struct ata_timing {int dummy; } ;
struct ata_port {int /*<<< orphan*/  dev; TYPE_1__* host; } ;
struct ata_device {int /*<<< orphan*/  pio_mode; } ;
struct at91_ide_info {int dummy; } ;
struct TYPE_2__ {struct at91_ide_info* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct ata_timing initial_timing ; 
 int /*<<< orphan*/  FUNC2 (struct at91_ide_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct at91_ide_info*,struct ata_timing*) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev)
{
	struct at91_ide_info *info = ap->host->private_data;
	struct ata_timing timing;
	int ret;

	/* Compute ATA timing and set it to SMC */
	ret = FUNC0(adev, adev->pio_mode, &timing, 1000, 0);
	if (ret) {
		FUNC1(ap->dev, "Failed to compute ATA timing %d, \
				set PIO_0 timing\n", ret);
		FUNC3(ap->dev, info, &initial_timing);
	} else {
		FUNC3(ap->dev, info, &timing);
	}

	/* Setup SMC mode */
	FUNC2(info);

	return;
}