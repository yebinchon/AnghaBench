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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_node*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btree_node*,int) ; 

__attribute__((used)) static void FUNC5(struct btree_node *left, struct btree_node *right, int shift)
{
	uint32_t nr_left = FUNC2(left->header.nr_entries);
	uint32_t value_size = FUNC2(left->header.value_size);
	FUNC0(value_size != FUNC2(right->header.value_size));

	if (shift < 0) {
		shift = -shift;
		FUNC0(nr_left + shift > FUNC2(left->header.max_entries));
		FUNC3(FUNC1(left, nr_left),
		       FUNC1(right, 0),
		       shift * sizeof(__le64));
		FUNC3(FUNC4(left, nr_left),
		       FUNC4(right, 0),
		       shift * value_size);
	} else {
		FUNC0(shift > FUNC2(right->header.max_entries));
		FUNC3(FUNC1(right, 0),
		       FUNC1(left, nr_left - shift),
		       shift * sizeof(__le64));
		FUNC3(FUNC4(right, 0),
		       FUNC4(left, nr_left - shift),
		       shift * value_size);
	}
}