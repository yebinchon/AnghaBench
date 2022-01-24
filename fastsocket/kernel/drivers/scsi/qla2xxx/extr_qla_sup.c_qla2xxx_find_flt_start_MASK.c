#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct req_que {scalar_t__ ring; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct qla_flt_location {char* sig; int /*<<< orphan*/  start_lo; int /*<<< orphan*/  start_hi; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_7 ; 
 int FA_FLASH_LAYOUT_ADDR ; 
 int FA_FLASH_LAYOUT_ADDR_24 ; 
 int FA_FLASH_LAYOUT_ADDR_81 ; 
 int FA_FLASH_LAYOUT_ADDR_82 ; 
 int FA_FLASH_LAYOUT_ADDR_83 ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*,int,char*,char const*,int) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_init ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int*,int,int) ; 

__attribute__((used)) static int
FUNC10(scsi_qla_host_t *vha, uint32_t *start)
{
	const char *loc, *locations[] = { "DEF", "PCI" };
	uint32_t pcihdr, pcids;
	uint32_t *dcode;
	uint8_t *buf, *bcode, last_image;
	uint16_t cnt, chksum, *wptr;
	struct qla_flt_location *fltl;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req = ha->req_q_map[0];

	/*
	 * FLT-location structure resides after the last PCI region.
	 */

	/* Begin with sane defaults. */
	loc = locations[0];
	*start = 0;
	if (FUNC0(ha))
		*start = FA_FLASH_LAYOUT_ADDR_24;
	else if (FUNC1(ha))
		*start = FA_FLASH_LAYOUT_ADDR;
	else if (FUNC2(ha))
		*start = FA_FLASH_LAYOUT_ADDR_81;
	else if (FUNC3(ha)) {
		*start = FA_FLASH_LAYOUT_ADDR_82;
		goto end;
	} else if (FUNC4(ha)) {
		*start = FA_FLASH_LAYOUT_ADDR_83;
		goto end;
	}
	/* Begin with first PCI expansion ROM header. */
	buf = (uint8_t *)req->ring;
	dcode = (uint32_t *)req->ring;
	pcihdr = 0;
	last_image = 1;
	do {
		/* Verify PCI expansion ROM header. */
		FUNC9(vha, dcode, pcihdr >> 2, 0x20);
		bcode = buf + (pcihdr % 4);
		if (bcode[0x0] != 0x55 || bcode[0x1] != 0xaa)
			goto end;

		/* Locate PCI data structure. */
		pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);
		FUNC9(vha, dcode, pcids >> 2, 0x20);
		bcode = buf + (pcihdr % 4);

		/* Validate signature of PCI data structure. */
		if (bcode[0x0] != 'P' || bcode[0x1] != 'C' ||
		    bcode[0x2] != 'I' || bcode[0x3] != 'R')
			goto end;

		last_image = bcode[0x15] & BIT_7;

		/* Locate next PCI expansion ROM. */
		pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
	} while (!last_image);

	/* Now verify FLT-location structure. */
	fltl = (struct qla_flt_location *)req->ring;
	FUNC9(vha, dcode, pcihdr >> 2,
	    sizeof(struct qla_flt_location) >> 2);
	if (fltl->sig[0] != 'Q' || fltl->sig[1] != 'F' ||
	    fltl->sig[2] != 'L' || fltl->sig[3] != 'T')
		goto end;

	wptr = (uint16_t *)req->ring;
	cnt = sizeof(struct qla_flt_location) >> 1;
	for (chksum = 0; cnt; cnt--)
		chksum += FUNC5(*wptr++);
	if (chksum) {
		FUNC8(ql_log_fatal, vha, 0x0045,
		    "Inconsistent FLTL detected: checksum=0x%x.\n", chksum);
		FUNC7(ql_dbg_init + ql_dbg_buffer, vha, 0x010e,
		    buf, sizeof(struct qla_flt_location));
		return QLA_FUNCTION_FAILED;
	}

	/* Good data.  Use specified location. */
	loc = locations[1];
	*start = (FUNC5(fltl->start_hi) << 16 |
	    FUNC5(fltl->start_lo)) >> 2;
end:
	FUNC6(ql_dbg_init, vha, 0x0046,
	    "FLTL[%s] = 0x%x.\n",
	    loc, *start);
	return QLA_SUCCESS;
}