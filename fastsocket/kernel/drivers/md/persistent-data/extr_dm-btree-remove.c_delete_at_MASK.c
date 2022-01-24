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
typedef  unsigned int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  value_size; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_node*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_node*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct btree_node *n, unsigned index)
{
	unsigned nr_entries = FUNC3(n->header.nr_entries);
	unsigned nr_to_copy = nr_entries - (index + 1);
	uint32_t value_size = FUNC3(n->header.value_size);
	FUNC0(index >= nr_entries);

	if (nr_to_copy) {
		FUNC4(FUNC2(n, index),
			FUNC2(n, index + 1),
			nr_to_copy * sizeof(__le64));

		FUNC4(FUNC5(n, index),
			FUNC5(n, index + 1),
			nr_to_copy * value_size);
	}

	n->header.nr_entries = FUNC1(nr_entries - 1);
}