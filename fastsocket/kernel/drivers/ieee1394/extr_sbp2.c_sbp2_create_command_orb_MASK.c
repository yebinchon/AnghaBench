#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct scsi_cmnd {int sc_data_direction; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; } ;
struct sbp2_lu {TYPE_3__* hi; int /*<<< orphan*/  speed_code; int /*<<< orphan*/  max_payload_size; } ;
struct sbp2_command_orb {int next_ORB_lo; int data_descriptor_hi; int data_descriptor_lo; int /*<<< orphan*/  cdb; int /*<<< orphan*/  misc; int /*<<< orphan*/  next_ORB_hi; } ;
struct sbp2_command_info {int /*<<< orphan*/  command_orb_dma; struct sbp2_command_orb command_orb; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {TYPE_2__* host; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ device; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_NONE ; 
 int DMA_TO_DEVICE ; 
 scalar_t__ ORB_DIRECTION_NO_DATA_TRANSFER ; 
 scalar_t__ ORB_DIRECTION_READ_FROM_MEDIA ; 
 scalar_t__ ORB_DIRECTION_WRITE_TO_MEDIA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct sbp2_command_orb*,TYPE_3__*,struct sbp2_command_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sbp2_command_orb*,int) ; 
 unsigned int FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC15(struct sbp2_lu *lu,
				   struct sbp2_command_info *cmd,
				   struct scsi_cmnd *SCpnt)
{
	struct device *dmadev = lu->hi->host->device.parent;
	struct sbp2_command_orb *orb = &cmd->command_orb;
	unsigned int scsi_request_bufflen = FUNC12(SCpnt);
	enum dma_data_direction dma_dir = SCpnt->sc_data_direction;
	u32 orb_direction;
	int ret;

	FUNC6(dmadev, cmd->command_orb_dma,
				sizeof(struct sbp2_command_orb), DMA_TO_DEVICE);
	/*
	 * Set-up our command ORB.
	 *
	 * NOTE: We're doing unrestricted page tables (s/g), as this is
	 * best performance (at least with the devices I have). This means
	 * that data_size becomes the number of s/g elements, and
	 * page_size should be zero (for unrestricted).
	 */
	orb->next_ORB_hi = FUNC3(1);
	orb->next_ORB_lo = 0x0;
	orb->misc = FUNC1(lu->max_payload_size);
	orb->misc |= FUNC4(lu->speed_code);
	orb->misc |= FUNC2(1);

	if (dma_dir == DMA_NONE)
		orb_direction = ORB_DIRECTION_NO_DATA_TRANSFER;
	else if (dma_dir == DMA_TO_DEVICE && scsi_request_bufflen)
		orb_direction = ORB_DIRECTION_WRITE_TO_MEDIA;
	else if (dma_dir == DMA_FROM_DEVICE && scsi_request_bufflen)
		orb_direction = ORB_DIRECTION_READ_FROM_MEDIA;
	else {
		FUNC5("Falling back to DMA_NONE");
		orb_direction = ORB_DIRECTION_NO_DATA_TRANSFER;
	}

	/* set up our page table stuff */
	if (orb_direction == ORB_DIRECTION_NO_DATA_TRANSFER) {
		orb->data_descriptor_hi = 0x0;
		orb->data_descriptor_lo = 0x0;
		orb->misc |= FUNC0(1);
		ret = 0;
	} else {
		ret = FUNC10(orb, lu->hi, cmd,
					       FUNC13(SCpnt),
					       FUNC14(SCpnt),
					       orb_direction, dma_dir);
	}
	FUNC11(orb, sizeof(*orb));

	FUNC9(orb->cdb, 0, sizeof(orb->cdb));
	FUNC8(orb->cdb, SCpnt->cmnd, SCpnt->cmd_len);

	FUNC7(dmadev, cmd->command_orb_dma,
			sizeof(struct sbp2_command_orb), DMA_TO_DEVICE);
	return ret;
}