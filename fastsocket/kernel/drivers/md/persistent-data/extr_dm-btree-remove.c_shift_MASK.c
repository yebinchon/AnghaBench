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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {void* nr_entries; void* max_entries; } ;
struct btree_node {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_node*,struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btree_node*,int) ; 

__attribute__((used)) static void FUNC5(struct btree_node *left, struct btree_node *right, int count)
{
	uint32_t nr_left = FUNC2(left->header.nr_entries);
	uint32_t nr_right = FUNC2(right->header.nr_entries);
	uint32_t max_entries = FUNC2(left->header.max_entries);
	uint32_t r_max_entries = FUNC2(right->header.max_entries);

	FUNC0(max_entries != r_max_entries);
	FUNC0(nr_left - count > max_entries);
	FUNC0(nr_right + count > max_entries);

	if (!count)
		return;

	if (count > 0) {
		FUNC4(right, count);
		FUNC3(left, right, count);
	} else {
		FUNC3(left, right, count);
		FUNC4(right, count);
	}

	left->header.nr_entries = FUNC1(nr_left - count);
	right->header.nr_entries = FUNC1(nr_right + count);
}