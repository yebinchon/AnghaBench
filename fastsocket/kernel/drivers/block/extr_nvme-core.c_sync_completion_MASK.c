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
struct sync_cmd_info {int status; int /*<<< orphan*/  task; int /*<<< orphan*/  result; } ;
struct nvme_dev {int dummy; } ;
struct nvme_completion {int /*<<< orphan*/  status; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nvme_dev *dev, void *ctx,
						struct nvme_completion *cqe)
{
	struct sync_cmd_info *cmdinfo = ctx;
	cmdinfo->result = FUNC1(&cqe->result);
	cmdinfo->status = FUNC0(&cqe->status) >> 1;
	FUNC2(cmdinfo->task);
}