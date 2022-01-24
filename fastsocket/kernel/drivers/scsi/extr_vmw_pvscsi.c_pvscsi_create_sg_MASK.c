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
struct scatterlist {int dummy; } ;
struct pvscsi_ctx {TYPE_1__* sgl; } ;
struct PVSCSISGElement {scalar_t__ flags; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {struct PVSCSISGElement* sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PVSCSI_MAX_NUM_SG_ENTRIES_PER_SEGMENT ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC3(struct pvscsi_ctx *ctx,
			     struct scatterlist *sg, unsigned count)
{
	unsigned i;
	struct PVSCSISGElement *sge;

	FUNC0(count > PVSCSI_MAX_NUM_SG_ENTRIES_PER_SEGMENT);

	sge = &ctx->sgl->sge[0];
	for (i = 0; i < count; i++, sg++) {
		sge[i].addr   = FUNC1(sg);
		sge[i].length = FUNC2(sg);
		sge[i].flags  = 0;
	}
}