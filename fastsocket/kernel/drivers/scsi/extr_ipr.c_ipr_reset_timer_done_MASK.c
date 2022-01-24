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
struct ipr_ioa_cfg {TYPE_1__* host; struct ipr_cmnd* reset_cmd; } ;
struct ipr_cmnd {int /*<<< orphan*/  (* done ) (struct ipr_cmnd*) ;int /*<<< orphan*/  queue; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_cmnd*) ; 

__attribute__((used)) static void FUNC4(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	unsigned long lock_flags = 0;

	FUNC1(ioa_cfg->host->host_lock, lock_flags);

	if (ioa_cfg->reset_cmd == ipr_cmd) {
		FUNC0(&ipr_cmd->queue);
		ipr_cmd->done(ipr_cmd);
	}

	FUNC2(ioa_cfg->host->host_lock, lock_flags);
}