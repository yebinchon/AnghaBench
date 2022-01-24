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
struct scatterlist {scalar_t__ length; } ;
struct iscsi_segment {unsigned int sg_offset; int /*<<< orphan*/ * data; scalar_t__ total_copied; scalar_t__ total_size; int /*<<< orphan*/  size; struct scatterlist* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC1(struct iscsi_segment *segment,
			  struct scatterlist *sg, unsigned int offset)
{
	segment->sg = sg;
	segment->sg_offset = offset;
	segment->size = FUNC0(sg->length - offset,
			    segment->total_size - segment->total_copied);
	segment->data = NULL;
}