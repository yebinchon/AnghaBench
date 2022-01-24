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
struct scatterlist {int dummy; } ;
struct dc390_srb {int /*<<< orphan*/  SGToBeXferLen; int /*<<< orphan*/  SGBusAddr; struct scatterlist* pSegmentList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static void inline FUNC2(struct dc390_srb* pSRB)
{
	struct scatterlist *psgl = pSRB->pSegmentList;

	/* start new sg segment */
	pSRB->SGBusAddr = FUNC0(psgl);
	pSRB->SGToBeXferLen = FUNC1(psgl);
}