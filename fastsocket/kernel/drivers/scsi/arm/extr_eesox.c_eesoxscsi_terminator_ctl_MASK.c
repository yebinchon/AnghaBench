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
struct eesoxscsi_info {int /*<<< orphan*/  ctl_port; int /*<<< orphan*/  control; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EESOX_TERM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct Scsi_Host *host, int on_off)
{
	struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
	unsigned long flags;

	FUNC0(host->host_lock, flags);
	if (on_off)
		info->control |= EESOX_TERM_ENABLE;
	else
		info->control &= ~EESOX_TERM_ENABLE;

	FUNC2(info->control, info->ctl_port);
	FUNC1(host->host_lock, flags);
}