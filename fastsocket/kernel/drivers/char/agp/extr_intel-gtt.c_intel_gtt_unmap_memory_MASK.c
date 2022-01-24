#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int orig_nents; int nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcidev; } ;
struct TYPE_3__ {scalar_t__ page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 TYPE_2__ intel_private ; 
 TYPE_1__* mem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 

__attribute__((used)) static void FUNC3(struct scatterlist *sg_list, int num_sg)
{
	struct sg_table st;
	FUNC0("try unmapping %lu pages\n", (unsigned long)mem->page_count);

	FUNC1(intel_private.pcidev, sg_list,
		     num_sg, PCI_DMA_BIDIRECTIONAL);

	st.sgl = sg_list;
	st.orig_nents = st.nents = num_sg;

	FUNC2(&st);
}