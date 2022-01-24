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
struct pt1_table {int /*<<< orphan*/  addr; int /*<<< orphan*/  page; int /*<<< orphan*/ * bufs; } ;
struct pt1 {int dummy; } ;

/* Variables and functions */
 int PT1_NR_BUFS ; 
 int /*<<< orphan*/  FUNC0 (struct pt1*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pt1 *pt1, struct pt1_table *table)
{
	int i;

	for (i = 0; i < PT1_NR_BUFS; i++)
		FUNC0(pt1, &table->bufs[i]);

	FUNC1(pt1, table->page, table->addr);
}