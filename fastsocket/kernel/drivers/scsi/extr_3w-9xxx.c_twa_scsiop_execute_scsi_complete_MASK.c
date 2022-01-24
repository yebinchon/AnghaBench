#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct TYPE_3__ {void** generic_buffer_virt; struct scsi_cmnd** srb; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 scalar_t__ DMA_BIDIRECTIONAL ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ TW_MIN_SGL_LENGTH ; 
 int /*<<< orphan*/  TW_SECTOR_SIZE ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC3(TW_Device_Extension *tw_dev, int request_id)
{
	struct scsi_cmnd *cmd = tw_dev->srb[request_id];

	if (FUNC0(cmd) < TW_MIN_SGL_LENGTH &&
	    (cmd->sc_data_direction == DMA_FROM_DEVICE ||
	     cmd->sc_data_direction == DMA_BIDIRECTIONAL)) {
		if (FUNC2(cmd) == 1) {
			void *buf = tw_dev->generic_buffer_virt[request_id];

			FUNC1(cmd, buf, TW_SECTOR_SIZE);
		}
	}
}