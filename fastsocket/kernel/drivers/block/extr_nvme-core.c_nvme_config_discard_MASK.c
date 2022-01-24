#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct nvme_ns {TYPE_2__* queue; } ;
struct TYPE_4__ {int max_discard_sectors; void* discard_granularity; void* discard_alignment; scalar_t__ discard_zeroes_data; } ;
struct TYPE_5__ {TYPE_1__ limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct nvme_ns *ns)
{
	u32 logical_block_size = FUNC1(ns->queue);
	ns->queue->limits.discard_zeroes_data = 0;
	ns->queue->limits.discard_alignment = logical_block_size;
	ns->queue->limits.discard_granularity = logical_block_size;
	ns->queue->limits.max_discard_sectors = 0xffffffff;
	FUNC0(QUEUE_FLAG_DISCARD, ns->queue);
}