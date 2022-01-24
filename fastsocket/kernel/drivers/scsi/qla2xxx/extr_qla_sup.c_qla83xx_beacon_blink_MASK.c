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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  beacon_blink_led; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct scsi_qla_host*,int*) ; 
 int FUNC6 (struct scsi_qla_host*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,int,int*) ; 
 int FUNC8 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*,int,int) ; 

void
FUNC10(struct scsi_qla_host *vha)
{
	uint32_t led_select_value;
	struct qla_hw_data *ha = vha->hw;
	uint16_t led_cfg[6];
	uint16_t orig_led_cfg[6];
	uint32_t led_10_value, led_43_value;

	if (!FUNC3(ha) && !FUNC2(ha))
		return;

	if (!ha->beacon_blink_led)
		return;

	if (FUNC0(ha)) {
		led_select_value = FUNC8(ha);

		FUNC9(vha, led_select_value, 0x40002000);
		FUNC9(vha, led_select_value + 4, 0x40002000);
		FUNC4(1000);
		FUNC9(vha, led_select_value, 0x40004000);
		FUNC9(vha, led_select_value + 4 , 0x40004000);
	} else if (FUNC1(ha)) {
		led_select_value = FUNC8(ha);

		FUNC7(vha, led_select_value, &led_10_value);
		FUNC7(vha, led_select_value + 0x10, &led_43_value);
		FUNC9(vha, led_select_value, 0x01f44000);
		FUNC4(500);
		FUNC9(vha, led_select_value, 0x400001f4);
		FUNC4(1000);
		FUNC9(vha, led_select_value, led_10_value);
		FUNC9(vha, led_select_value + 0x10, led_43_value);
	} else if (FUNC2(ha)) {
		int rval;

		/* Save Current */
		rval = FUNC5(vha, orig_led_cfg);
		/* Do the blink */
		if (rval == QLA_SUCCESS) {
			if (FUNC2(ha)) {
			    led_cfg[0] = 0x4000;
			    led_cfg[1] = 0x2000;
			    led_cfg[2] = 0;
			    led_cfg[3] = 0;
			    led_cfg[4] = 0;
			    led_cfg[5] = 0;
			} else {
			    led_cfg[0] = 0x4000;
			    led_cfg[1] = 0x4000;
			    led_cfg[2] = 0x4000;
			    led_cfg[3] = 0x2000;
			    led_cfg[4] = 0;
			    led_cfg[5] = 0x2000;
			}
			rval = FUNC6(vha, led_cfg);
			FUNC4(1000);
			if (FUNC2(ha)) {
			    led_cfg[0] = 0x4000;
			    led_cfg[1] = 0x2000;
			    led_cfg[2] = 0;
			} else {
			    led_cfg[0] = 0x4000;
			    led_cfg[1] = 0x2000;
			    led_cfg[2] = 0x4000;
			    led_cfg[3] = 0x4000;
			    led_cfg[4] = 0;
			    led_cfg[5] = 0x2000;
			}
			rval = FUNC6(vha, led_cfg);
		}
		/* On exit, restore original (presumes no status change) */
		FUNC6(vha, orig_led_cfg);
	}
}