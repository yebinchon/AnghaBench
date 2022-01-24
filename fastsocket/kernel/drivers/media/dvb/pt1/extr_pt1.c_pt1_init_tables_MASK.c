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
typedef  int /*<<< orphan*/  u32 ;
struct pt1_table {TYPE_1__* page; } ;
struct pt1 {struct pt1_table* tables; } ;
struct TYPE_2__ {void* next_pfn; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt1*,struct pt1_table*) ; 
 int FUNC2 (struct pt1*,struct pt1_table*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pt1*) ; 
 int pt1_nr_tables ; 
 int /*<<< orphan*/  FUNC4 (struct pt1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pt1_table*) ; 
 struct pt1_table* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct pt1 *pt1)
{
	struct pt1_table *tables;
	int i, ret;
	u32 first_pfn, pfn;

	tables = FUNC6(sizeof(struct pt1_table) * pt1_nr_tables);
	if (tables == NULL)
		return -ENOMEM;

	FUNC3(pt1);

	i = 0;
	if (pt1_nr_tables) {
		ret = FUNC2(pt1, &tables[0], &first_pfn);
		if (ret)
			goto err;
		i++;
	}

	while (i < pt1_nr_tables) {
		ret = FUNC2(pt1, &tables[i], &pfn);
		if (ret)
			goto err;
		tables[i - 1].page->next_pfn = FUNC0(pfn);
		i++;
	}

	tables[pt1_nr_tables - 1].page->next_pfn = FUNC0(first_pfn);

	FUNC4(pt1, first_pfn);
	pt1->tables = tables;
	return 0;

err:
	while (i--)
		FUNC1(pt1, &tables[i]);

	FUNC5(tables);
	return ret;
}