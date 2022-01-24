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
typedef  int uint32_t ;
struct scsi_qla_host {int host_no; int fw_dump_tmplt_size; int fw_dump_capture_mask; int fw_dump_size; TYPE_1__* pdev; scalar_t__ fw_dump; scalar_t__ fw_dump_tmplt_hdr; int /*<<< orphan*/  flags; } ;
struct qla4_8xxx_minidump_template_hdr {int capture_debug_level; int driver_capture_mask; int num_of_entries; scalar_t__* capture_size_array; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_82XX_FW_DUMPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int ql4xmdcapmask ; 
 int FUNC6 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct scsi_qla_host *ha)
{
	int status;
	uint32_t capture_debug_level;
	int hdr_entry_bit, k;
	void *md_tmp;
	dma_addr_t md_tmp_dma;
	struct qla4_8xxx_minidump_template_hdr *md_hdr;

	if (ha->fw_dump) {
		FUNC5(KERN_WARNING, ha,
			   "Firmware dump previously allocated.\n");
		return;
	}

	status = FUNC7(ha);
	if (status != QLA_SUCCESS) {
		FUNC5(KERN_INFO, ha,
			   "scsi%ld: Failed to get template size\n",
			   ha->host_no);
		return;
	}

	FUNC1(AF_82XX_FW_DUMPED, &ha->flags);

	/* Allocate memory for saving the template */
	md_tmp = FUNC2(&ha->pdev->dev, ha->fw_dump_tmplt_size,
				    &md_tmp_dma, GFP_KERNEL);

	/* Request template */
	status =  FUNC6(ha, md_tmp_dma);
	if (status != QLA_SUCCESS) {
		FUNC5(KERN_INFO, ha,
			   "scsi%ld: Failed to get minidump template\n",
			   ha->host_no);
		goto alloc_cleanup;
	}

	md_hdr = (struct qla4_8xxx_minidump_template_hdr *)md_tmp;

	capture_debug_level = md_hdr->capture_debug_level;

	/* Get capture mask based on module loadtime setting. */
	if (ql4xmdcapmask >= 0x3 && ql4xmdcapmask <= 0x7F)
		ha->fw_dump_capture_mask = ql4xmdcapmask;
	else
		ha->fw_dump_capture_mask = capture_debug_level;

	md_hdr->driver_capture_mask = ha->fw_dump_capture_mask;

	FUNC0(FUNC5(KERN_INFO, ha, "Minimum num of entries = %d\n",
			  md_hdr->num_of_entries));
	FUNC0(FUNC5(KERN_INFO, ha, "Dump template size  = %d\n",
			  ha->fw_dump_tmplt_size));
	FUNC0(FUNC5(KERN_INFO, ha, "Selected Capture mask =0x%x\n",
			  ha->fw_dump_capture_mask));

	/* Calculate fw_dump_size */
	for (hdr_entry_bit = 0x2, k = 1; (hdr_entry_bit & 0xFF);
	     hdr_entry_bit <<= 1, k++) {
		if (hdr_entry_bit & ha->fw_dump_capture_mask)
			ha->fw_dump_size += md_hdr->capture_size_array[k];
	}

	/* Total firmware dump size including command header */
	ha->fw_dump_size += ha->fw_dump_tmplt_size;
	ha->fw_dump = FUNC8(ha->fw_dump_size);
	if (!ha->fw_dump)
		goto alloc_cleanup;

	FUNC0(FUNC5(KERN_INFO, ha,
			  "Minidump Tempalate Size = 0x%x KB\n",
			  ha->fw_dump_tmplt_size));
	FUNC0(FUNC5(KERN_INFO, ha,
			  "Total Minidump size = 0x%x KB\n", ha->fw_dump_size));

	FUNC4(ha->fw_dump, md_tmp, ha->fw_dump_tmplt_size);
	ha->fw_dump_tmplt_hdr = ha->fw_dump;

alloc_cleanup:
	FUNC3(&ha->pdev->dev, ha->fw_dump_tmplt_size,
			  md_tmp, md_tmp_dma);
}