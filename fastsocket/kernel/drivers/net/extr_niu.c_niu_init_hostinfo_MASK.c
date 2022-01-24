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
struct niu_rdc_tables {int first_table_num; } ;
struct niu_parent {struct niu_rdc_tables* rdc_group_cfg; } ;
struct niu {size_t port; struct niu_parent* parent; } ;

/* Variables and functions */
 int FUNC0 (struct niu*) ; 
 int FUNC1 (struct niu*,int,int,int) ; 
 int FUNC2 (struct niu*,int,int) ; 
 int FUNC3 (struct niu*,int,int) ; 

__attribute__((used)) static int FUNC4(struct niu *np)
{
	struct niu_parent *parent = np->parent;
	struct niu_rdc_tables *tp = &parent->rdc_group_cfg[np->port];
	int i, err, num_alt = FUNC0(np);
	int first_rdc_table = tp->first_table_num;

	err = FUNC3(np, first_rdc_table, 1);
	if (err)
		return err;

	err = FUNC2(np, first_rdc_table, 1);
	if (err)
		return err;

	for (i = 0; i < num_alt; i++) {
		err = FUNC1(np, i, first_rdc_table, 1);
		if (err)
			return err;
	}

	return 0;
}