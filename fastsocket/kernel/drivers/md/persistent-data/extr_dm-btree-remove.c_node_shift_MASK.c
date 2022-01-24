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
 void* FUNC1 (struct btree_node*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 void* FUNC4 (struct btree_node*,int) ; 

__attribute__((used)) static void FUNC5(struct btree_node *n, int shift)
{
	uint32_t nr_entries = FUNC2(n->header.nr_entries);
	uint32_t value_size = FUNC2(n->header.value_size);

	if (shift < 0) {
		shift = -shift;
		FUNC0(shift > nr_entries);
		FUNC0((void *) FUNC1(n, shift) >= FUNC4(n, shift));
		FUNC3(FUNC1(n, 0),
			FUNC1(n, shift),
			(nr_entries - shift) * sizeof(__le64));
		FUNC3(FUNC4(n, 0),
			FUNC4(n, shift),
			(nr_entries - shift) * value_size);
	} else {
		FUNC0(nr_entries + shift > FUNC2(n->header.max_entries));
		FUNC3(FUNC1(n, shift),
			FUNC1(n, 0),
			nr_entries * sizeof(__le64));
		FUNC3(FUNC4(n, shift),
			FUNC4(n, 0),
			nr_entries * value_size);
	}
}