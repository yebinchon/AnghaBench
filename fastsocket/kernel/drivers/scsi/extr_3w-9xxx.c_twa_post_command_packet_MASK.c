#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int dma_addr_t ;
struct TYPE_10__ {int* command_packet_phys; scalar_t__ pending_request_count; scalar_t__* state; scalar_t__ max_pending_request_count; int* pending_queue; size_t pending_tail; scalar_t__ posted_request_count; scalar_t__ max_posted_request_count; TYPE_1__* tw_pci_dev; } ;
struct TYPE_9__ {scalar_t__ device; } ;
typedef  TYPE_2__ TW_Device_Extension ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_3WARE_9650SE ; 
 scalar_t__ PCI_DEVICE_ID_3WARE_9690SA ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int TW_COMMAND_OFFSET ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int TW_Q_LENGTH ; 
 int TW_STATUS_COMMAND_QUEUE_FULL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ TW_S_PENDING ; 
 scalar_t__ TW_S_POSTED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(TW_Device_Extension *tw_dev, int request_id, char internal)
{
	u32 status_reg_value;
	dma_addr_t command_que_value;
	int retval = 1;

	command_que_value = tw_dev->command_packet_phys[request_id];

	/* For 9650SE write low 4 bytes first */
	if ((tw_dev->tw_pci_dev->device == PCI_DEVICE_ID_3WARE_9650SE) ||
	    (tw_dev->tw_pci_dev->device == PCI_DEVICE_ID_3WARE_9690SA)) {
		command_que_value += TW_COMMAND_OFFSET;
		FUNC7((u32)command_que_value, FUNC1(tw_dev));
	}

	status_reg_value = FUNC4(FUNC2(tw_dev));

	if (FUNC5(status_reg_value))
		FUNC6(tw_dev, status_reg_value);

	if (((tw_dev->pending_request_count > 0) && (tw_dev->state[request_id] != TW_S_PENDING)) || (status_reg_value & TW_STATUS_COMMAND_QUEUE_FULL)) {

		/* Only pend internal driver commands */
		if (!internal) {
			retval = SCSI_MLQUEUE_HOST_BUSY;
			goto out;
		}

		/* Couldn't post the command packet, so we do it later */
		if (tw_dev->state[request_id] != TW_S_PENDING) {
			tw_dev->state[request_id] = TW_S_PENDING;
			tw_dev->pending_request_count++;
			if (tw_dev->pending_request_count > tw_dev->max_pending_request_count) {
				tw_dev->max_pending_request_count = tw_dev->pending_request_count;
			}
			tw_dev->pending_queue[tw_dev->pending_tail] = request_id;
			tw_dev->pending_tail = (tw_dev->pending_tail + 1) % TW_Q_LENGTH;
		}
		FUNC3(tw_dev);
		goto out;
	} else {
		if ((tw_dev->tw_pci_dev->device == PCI_DEVICE_ID_3WARE_9650SE) ||
		    (tw_dev->tw_pci_dev->device == PCI_DEVICE_ID_3WARE_9690SA)) {
			/* Now write upper 4 bytes */
			FUNC7((u32)((u64)command_que_value >> 32), FUNC1(tw_dev) + 0x4);
		} else {
			if (sizeof(dma_addr_t) > 4) {
				command_que_value += TW_COMMAND_OFFSET;
				FUNC7((u32)command_que_value, FUNC0(tw_dev));
				FUNC7((u32)((u64)command_que_value >> 32), FUNC0(tw_dev) + 0x4);
			} else {
				FUNC7(TW_COMMAND_OFFSET + command_que_value, FUNC0(tw_dev));
			}
		}
		tw_dev->state[request_id] = TW_S_POSTED;
		tw_dev->posted_request_count++;
		if (tw_dev->posted_request_count > tw_dev->max_posted_request_count) {
			tw_dev->max_posted_request_count = tw_dev->posted_request_count;
		}
	}
	retval = 0;
out:
	return retval;
}