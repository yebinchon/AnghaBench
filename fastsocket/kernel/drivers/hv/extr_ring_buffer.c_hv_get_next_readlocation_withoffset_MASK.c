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
typedef  scalar_t__ u32 ;
struct hv_ring_buffer_info {scalar_t__ ring_datasize; TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {scalar_t__ read_index; } ;

/* Variables and functions */

__attribute__((used)) static inline u32
FUNC0(struct hv_ring_buffer_info *ring_info,
				 u32 offset)
{
	u32 next = ring_info->ring_buffer->read_index;

	next += offset;
	next %= ring_info->ring_datasize;

	return next;
}