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
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int r_a_tov; unsigned long login_timeout; } ;

/* Variables and functions */
 int FX00_DEF_RATOV ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 

unsigned long
FUNC2(struct scsi_qla_host *vha)
{
	unsigned long tmo;
	struct qla_hw_data *ha = vha->hw;

	/* Firmware should use switch negotiated r_a_tov for timeout. */
	tmo = ha->r_a_tov / 10 * 2;
	if (FUNC1(ha)) {
		tmo = FX00_DEF_RATOV * 2;
	} else if (!FUNC0(ha)) {
		/*
		 * Except for earlier ISPs where the timeout is seeded from the
		 * initialization control block.
		 */
		tmo = ha->login_timeout;
	}
	return tmo;
}