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
typedef  int /*<<< orphan*/  u32 ;
struct nvme_dev {int /*<<< orphan*/ * queues; } ;
struct nvme_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMIN_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct nvme_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct nvme_dev *dev, struct nvme_command *cmd,
								u32 *result)
{
	return FUNC0(dev->queues[0], cmd, result, ADMIN_TIMEOUT);
}