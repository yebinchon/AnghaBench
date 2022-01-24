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
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* private_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct ata_device*) ; 

__attribute__((used)) static unsigned int FUNC2(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct ata_device *adev = qc->dev;

	/* If timings are set and for the wrong channel (2nd test is
	   due to a libata shortcoming and will eventually go I hope) */
	if (ap->host->private_data != ap->host
	    && ap->host->private_data != NULL)
		FUNC1(ap, adev);

	return FUNC0(qc);
}