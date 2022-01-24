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
struct srp_event_struct {int dummy; } ;
struct srp_cmd {int dummy; } ;
struct scsi_cmnd {int sc_data_direction; int /*<<< orphan*/  device; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  DMA_BIDIRECTIONAL 131 
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (struct scsi_cmnd*,struct srp_event_struct*,struct srp_cmd*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(struct scsi_cmnd *cmd,
				struct srp_event_struct *evt_struct,
				struct srp_cmd *srp_cmd, struct device *dev)
{
	switch (cmd->sc_data_direction) {
	case DMA_FROM_DEVICE:
	case DMA_TO_DEVICE:
		break;
	case DMA_NONE:
		return 1;
	case DMA_BIDIRECTIONAL:
		FUNC1(KERN_ERR, cmd->device,
			    "Can't map DMA_BIDIRECTIONAL to read/write\n");
		return 0;
	default:
		FUNC1(KERN_ERR, cmd->device,
			    "Unknown data direction 0x%02x; can't map!\n",
			    cmd->sc_data_direction);
		return 0;
	}

	return FUNC0(cmd, evt_struct, srp_cmd, dev);
}