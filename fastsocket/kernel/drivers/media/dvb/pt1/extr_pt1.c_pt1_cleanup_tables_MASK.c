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
struct pt1_table {int dummy; } ;
struct pt1 {struct pt1_table* tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt1*,struct pt1_table*) ; 
 int pt1_nr_tables ; 
 int /*<<< orphan*/  FUNC1 (struct pt1*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1_table*) ; 

__attribute__((used)) static void FUNC3(struct pt1 *pt1)
{
	struct pt1_table *tables;
	int i;

	tables = pt1->tables;
	FUNC1(pt1);

	for (i = 0; i < pt1_nr_tables; i++)
		FUNC0(pt1, &tables[i]);

	FUNC2(tables);
}