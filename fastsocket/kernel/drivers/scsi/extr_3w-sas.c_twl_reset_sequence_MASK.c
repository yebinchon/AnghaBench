#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_12__ {unsigned short fw_on_ctlr_srl; unsigned short fw_on_ctlr_branch; unsigned short fw_on_ctlr_build; int /*<<< orphan*/  driver_build_low; int /*<<< orphan*/  driver_branch_low; int /*<<< orphan*/  driver_srl_low; int /*<<< orphan*/  driver_build_high; int /*<<< orphan*/  driver_branch_high; int /*<<< orphan*/  driver_srl_high; int /*<<< orphan*/  driver_version; } ;
struct TYPE_13__ {TYPE_1__ tw_compat_info; int /*<<< orphan*/  host; scalar_t__* sense_buffer_phys; } ;
typedef  TYPE_2__ TW_Device_Extension ;

/* Variables and functions */
 int TWL_CONTROLLER_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int TWL_STATUS_OVERRUN_SUBMIT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  TW_9750_ARCH_ID ; 
 int /*<<< orphan*/  TW_BASE_FW_BRANCH ; 
 int /*<<< orphan*/  TW_BASE_FW_BUILD ; 
 int /*<<< orphan*/  TW_BASE_FW_SRL ; 
 int /*<<< orphan*/  TW_CURRENT_DRIVER_BRANCH ; 
 int /*<<< orphan*/  TW_CURRENT_DRIVER_BUILD ; 
 int /*<<< orphan*/  TW_CURRENT_DRIVER_SRL ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  TW_DRIVER_VERSION ; 
 int /*<<< orphan*/  TW_EXTENDED_INIT_CONNECT ; 
 int /*<<< orphan*/  TW_INIT_MESSAGE_CREDITS ; 
 int TW_MAX_RESET_TRIES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int TW_Q_LENGTH ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short*,unsigned short*,unsigned short*,unsigned short*,int*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(TW_Device_Extension *tw_dev, int soft_reset)
{
	int retval = 1;
	int i = 0;
	u32 status = 0;
	unsigned short fw_on_ctlr_srl = 0, fw_on_ctlr_arch_id = 0;
	unsigned short fw_on_ctlr_branch = 0, fw_on_ctlr_build = 0;
	u32 init_connect_result = 0;
	int tries = 0;
	int do_soft_reset = soft_reset;

	while (tries < TW_MAX_RESET_TRIES) {
		/* Do a soft reset if one is needed */
		if (do_soft_reset) {
			FUNC3(tw_dev);

			/* Make sure controller is in a good state */
			if (FUNC11(tw_dev, FUNC2(tw_dev), TWL_CONTROLLER_READY, 0x0, 30)) {
				FUNC5(tw_dev->host, TW_DRIVER, 0x10, "Controller never went non-ready during reset sequence");
				tries++;
				continue;
			}
			if (FUNC11(tw_dev, FUNC2(tw_dev), TWL_CONTROLLER_READY, TWL_CONTROLLER_READY, 60)) {
				FUNC5(tw_dev->host, TW_DRIVER, 0x11, "Controller not ready during reset sequence");
				tries++;
				continue;
			}
		}

		/* Initconnect */
		if (FUNC10(tw_dev, TW_INIT_MESSAGE_CREDITS,
				       TW_EXTENDED_INIT_CONNECT, TW_CURRENT_DRIVER_SRL,
				       TW_9750_ARCH_ID, TW_CURRENT_DRIVER_BRANCH,
				       TW_CURRENT_DRIVER_BUILD, &fw_on_ctlr_srl,
				       &fw_on_ctlr_arch_id, &fw_on_ctlr_branch,
				       &fw_on_ctlr_build, &init_connect_result)) {
			FUNC5(tw_dev->host, TW_DRIVER, 0x12, "Initconnection failed while checking SRL");
			do_soft_reset = 1;
			tries++;
			continue;
		}

		/* Load sense buffers */
		while (i < TW_Q_LENGTH) {
			FUNC12((u32)((u64)tw_dev->sense_buffer_phys[i] >> 32), FUNC0(tw_dev));
			FUNC12((u32)tw_dev->sense_buffer_phys[i], FUNC1(tw_dev));

			/* Check status for over-run after each write */
			status = FUNC6(FUNC4(tw_dev));
			if (!(status & TWL_STATUS_OVERRUN_SUBMIT))
			    i++;
		}

		/* Now check status */
		status = FUNC6(FUNC4(tw_dev));
		if (status) {
			FUNC5(tw_dev->host, TW_DRIVER, 0x13, "Bad controller status after loading sense buffers");
			do_soft_reset = 1;
			tries++;
			continue;
		}

		/* Drain the AEN queue */
		if (FUNC9(tw_dev, soft_reset)) {
			FUNC5(tw_dev->host, TW_DRIVER, 0x14, "AEN drain failed during reset sequence");
			do_soft_reset = 1;
			tries++;
			continue;
		}

		/* Load rest of compatibility struct */
		FUNC8(tw_dev->tw_compat_info.driver_version, TW_DRIVER_VERSION, FUNC7(TW_DRIVER_VERSION));
		tw_dev->tw_compat_info.driver_srl_high = TW_CURRENT_DRIVER_SRL;
		tw_dev->tw_compat_info.driver_branch_high = TW_CURRENT_DRIVER_BRANCH;
		tw_dev->tw_compat_info.driver_build_high = TW_CURRENT_DRIVER_BUILD;
		tw_dev->tw_compat_info.driver_srl_low = TW_BASE_FW_SRL;
		tw_dev->tw_compat_info.driver_branch_low = TW_BASE_FW_BRANCH;
		tw_dev->tw_compat_info.driver_build_low = TW_BASE_FW_BUILD;
		tw_dev->tw_compat_info.fw_on_ctlr_srl = fw_on_ctlr_srl;
		tw_dev->tw_compat_info.fw_on_ctlr_branch = fw_on_ctlr_branch;
		tw_dev->tw_compat_info.fw_on_ctlr_build = fw_on_ctlr_build;

		/* If we got here, controller is in a good state */
		retval = 0;
		goto out;
	}
out:
	return retval;
}