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
struct nvme_queue {int dummy; } ;
struct nvme_dev {struct nvme_queue** queues; } ;

/* Variables and functions */
 int FUNC0 () ; 

struct nvme_queue *FUNC1(struct nvme_dev *dev)
{
	return dev->queues[FUNC0() + 1];
}