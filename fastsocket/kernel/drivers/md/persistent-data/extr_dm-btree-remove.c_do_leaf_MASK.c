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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;

/* Variables and functions */
 int ENODATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btree_node*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct btree_node *n, uint64_t key, unsigned *index)
{
	int i = FUNC2(n, key);

	if ((i < 0) ||
	    (i >= FUNC0(n->header.nr_entries)) ||
	    (FUNC1(n->keys[i]) != key))
		return -ENODATA;

	*index = i;

	return 0;
}