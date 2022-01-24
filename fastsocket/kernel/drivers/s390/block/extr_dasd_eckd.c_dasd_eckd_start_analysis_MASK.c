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
struct dasd_eckd_private {int dummy; } ;
struct dasd_ccw_req {int expires; scalar_t__ retries; int /*<<< orphan*/  flags; int /*<<< orphan*/ * callback_data; int /*<<< orphan*/  callback; } ;
struct dasd_block {TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FLAGS_USE_ERP ; 
 int EAGAIN ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 int FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  dasd_eckd_analysis_callback ; 
 struct dasd_ccw_req* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct dasd_block *block)
{
	struct dasd_eckd_private *private;
	struct dasd_ccw_req *init_cqr;

	private = (struct dasd_eckd_private *) block->base->private;
	init_cqr = FUNC4(block->base);
	if (FUNC0(init_cqr))
		return FUNC1(init_cqr);
	init_cqr->callback = dasd_eckd_analysis_callback;
	init_cqr->callback_data = NULL;
	init_cqr->expires = 5*HZ;
	/* first try without ERP, so we can later handle unformatted
	 * devices as special case
	 */
	FUNC2(DASD_CQR_FLAGS_USE_ERP, &init_cqr->flags);
	init_cqr->retries = 0;
	FUNC3(init_cqr);
	return -EAGAIN;
}