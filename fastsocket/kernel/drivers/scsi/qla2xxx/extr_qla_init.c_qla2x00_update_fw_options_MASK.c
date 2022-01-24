#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_8__ {scalar_t__ enable_led_scheme; } ;
struct qla_hw_data {int* fw_options; int* fw_seriallink_options; TYPE_1__ flags; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_0 ; 
 int BIT_1 ; 
 int BIT_12 ; 
 int BIT_13 ; 
 int BIT_2 ; 
 int BIT_3 ; 
 int BIT_4 ; 
 int BIT_5 ; 
 int BIT_6 ; 
 int BIT_7 ; 
 int FO1_SET_EMPHASIS_SWING ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_2__*,int,char*) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_init ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_2__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int*) ; 

void
FUNC12(scsi_qla_host_t *vha)
{
	uint16_t swing, emphasis, tx_sens, rx_sens;
	struct qla_hw_data *ha = vha->hw;

	FUNC7(ha->fw_options, 0, sizeof(ha->fw_options));
	FUNC10(vha, ha->fw_options);

	if (FUNC0(ha) || FUNC1(ha))
		return;

	/* Serial Link options. */
	FUNC8(ql_dbg_init + ql_dbg_buffer, vha, 0x0115,
	    "Serial link options.\n");
	FUNC9(ql_dbg_init + ql_dbg_buffer, vha, 0x0109,
	    (uint8_t *)&ha->fw_seriallink_options,
	    sizeof(ha->fw_seriallink_options));

	ha->fw_options[1] &= ~FO1_SET_EMPHASIS_SWING;
	if (ha->fw_seriallink_options[3] & BIT_2) {
		ha->fw_options[1] |= FO1_SET_EMPHASIS_SWING;

		/*  1G settings */
		swing = ha->fw_seriallink_options[2] & (BIT_2 | BIT_1 | BIT_0);
		emphasis = (ha->fw_seriallink_options[2] &
		    (BIT_4 | BIT_3)) >> 3;
		tx_sens = ha->fw_seriallink_options[0] &
		    (BIT_3 | BIT_2 | BIT_1 | BIT_0);
		rx_sens = (ha->fw_seriallink_options[0] &
		    (BIT_7 | BIT_6 | BIT_5 | BIT_4)) >> 4;
		ha->fw_options[10] = (emphasis << 14) | (swing << 8);
		if (FUNC2(ha) || FUNC3(ha) || FUNC5(ha)) {
			if (rx_sens == 0x0)
				rx_sens = 0x3;
			ha->fw_options[10] |= (tx_sens << 4) | rx_sens;
		} else if (FUNC4(ha) || FUNC6(ha))
			ha->fw_options[10] |= BIT_5 |
			    ((rx_sens & (BIT_1 | BIT_0)) << 2) |
			    (tx_sens & (BIT_1 | BIT_0));

		/*  2G settings */
		swing = (ha->fw_seriallink_options[2] &
		    (BIT_7 | BIT_6 | BIT_5)) >> 5;
		emphasis = ha->fw_seriallink_options[3] & (BIT_1 | BIT_0);
		tx_sens = ha->fw_seriallink_options[1] &
		    (BIT_3 | BIT_2 | BIT_1 | BIT_0);
		rx_sens = (ha->fw_seriallink_options[1] &
		    (BIT_7 | BIT_6 | BIT_5 | BIT_4)) >> 4;
		ha->fw_options[11] = (emphasis << 14) | (swing << 8);
		if (FUNC2(ha) || FUNC3(ha) || FUNC5(ha)) {
			if (rx_sens == 0x0)
				rx_sens = 0x3;
			ha->fw_options[11] |= (tx_sens << 4) | rx_sens;
		} else if (FUNC4(ha) || FUNC6(ha))
			ha->fw_options[11] |= BIT_5 |
			    ((rx_sens & (BIT_1 | BIT_0)) << 2) |
			    (tx_sens & (BIT_1 | BIT_0));
	}

	/* FCP2 options. */
	/*  Return command IOCBs without waiting for an ABTS to complete. */
	ha->fw_options[3] |= BIT_13;

	/* LED scheme. */
	if (ha->flags.enable_led_scheme)
		ha->fw_options[2] |= BIT_12;

	/* Detect ISP6312. */
	if (FUNC5(ha))
		ha->fw_options[2] |= BIT_13;

	/* Update firmware options. */
	FUNC11(vha, ha->fw_options);
}