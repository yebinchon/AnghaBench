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
struct scsi_pointer {int /*<<< orphan*/  this_residual; int /*<<< orphan*/  ptr; } ;
struct eesoxscsi_info {int /*<<< orphan*/  base; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  scalar_t__ fasdmadir_t ;

/* Variables and functions */
 scalar_t__ DMA_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct Scsi_Host *host, struct scsi_pointer *SCp,
		     fasdmadir_t dir, int transfer_size)
{
	struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
	if (dir == DMA_IN) {
		FUNC0(SCp->ptr, SCp->this_residual, info->base);
	} else {
		FUNC1(SCp->ptr, SCp->this_residual, info->base);
	}
}