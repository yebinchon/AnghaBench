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
struct ipr_sglist {int num_sg; int /*<<< orphan*/  order; int /*<<< orphan*/ * scatterlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_sglist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ipr_sglist *sglist)
{
	int i;

	for (i = 0; i < sglist->num_sg; i++)
		FUNC0(FUNC2(&sglist->scatterlist[i]), sglist->order);

	FUNC1(sglist);
}