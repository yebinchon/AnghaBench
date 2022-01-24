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
struct scsi_cmnd {int /*<<< orphan*/  sc_data_direction; TYPE_2__* device; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct device* dma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

void FUNC3(struct scsi_cmnd *cmd)
{
	if (FUNC1(cmd)) {
		struct device *dev = cmd->device->host->dma_dev;

		FUNC0(dev, FUNC2(cmd), FUNC1(cmd),
			     cmd->sc_data_direction);
	}
}