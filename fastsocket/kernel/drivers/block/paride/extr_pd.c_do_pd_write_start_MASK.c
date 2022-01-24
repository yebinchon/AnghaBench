#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum action { ____Placeholder_action } action ;
struct TYPE_4__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int Fail ; 
 int Hold ; 
 int /*<<< orphan*/  IDE_WRITE ; 
 scalar_t__ PD_MAX_RETRIES ; 
 scalar_t__ PD_TMO ; 
 int /*<<< orphan*/  STAT_DRQ ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  STAT_READY ; 
 int Wait ; 
 int /*<<< orphan*/  do_pd_write_done ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  pd_block ; 
 int /*<<< orphan*/  pd_buf ; 
 TYPE_1__* pd_current ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ pd_retries ; 
 int /*<<< orphan*/  pd_run ; 
 scalar_t__ pd_timeout ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  phase ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum action FUNC4(void)
{
	if (FUNC2(pd_current, STAT_READY, "do_pd_write") & STAT_ERR) {
		if (pd_retries < PD_MAX_RETRIES) {
			pd_retries++;
			return Wait;
		}
		return Fail;
	}
	FUNC0(pd_current, IDE_WRITE, pd_block, pd_run);
	while (1) {
		if (FUNC2(pd_current, STAT_DRQ, "do_pd_write_drq") & STAT_ERR) {
			if (pd_retries < PD_MAX_RETRIES) {
				pd_retries++;
				return Wait;
			}
			return Fail;
		}
		FUNC3(pd_current->pi, pd_buf, 512);
		if (FUNC1())
			break;
	}
	phase = do_pd_write_done;
	pd_timeout = jiffies + PD_TMO;
	return Hold;
}