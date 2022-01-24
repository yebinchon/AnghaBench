#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct shadow_spine {struct dm_block** nodes; TYPE_3__* info; } ;
struct dm_block {int dummy; } ;
struct TYPE_5__ {void* flags; int /*<<< orphan*/  value_size; int /*<<< orphan*/  max_entries; void* nr_entries; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_2__ value_type; } ;

/* Variables and functions */
 int INTERNAL_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct btree_node* FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_block*) ; 
 int FUNC5 (int,struct btree_node*,unsigned int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_3__*,struct dm_block**) ; 
 struct dm_block* FUNC11 (struct shadow_spine*) ; 
 struct dm_block* FUNC12 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct dm_block*) ; 
 int /*<<< orphan*/ * FUNC14 (struct btree_node*,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct shadow_spine *s, dm_block_t root,
			       unsigned parent_index, uint64_t key)
{
	int r;
	size_t size;
	unsigned nr_left, nr_right;
	struct dm_block *left, *right, *parent;
	struct btree_node *ln, *rn, *pn;
	__le64 location;

	left = FUNC11(s);

	r = FUNC10(s->info, &right);
	if (r < 0)
		return r;

	ln = FUNC3(left);
	rn = FUNC3(right);

	nr_left = FUNC6(ln->header.nr_entries) / 2;
	nr_right = FUNC6(ln->header.nr_entries) - nr_left;

	ln->header.nr_entries = FUNC1(nr_left);

	rn->header.flags = ln->header.flags;
	rn->header.nr_entries = FUNC1(nr_right);
	rn->header.max_entries = ln->header.max_entries;
	rn->header.value_size = ln->header.value_size;
	FUNC8(rn->keys, ln->keys + nr_left, nr_right * sizeof(rn->keys[0]));

	size = FUNC6(ln->header.flags) & INTERNAL_NODE ?
		sizeof(uint64_t) : s->info->value_type.size;
	FUNC8(FUNC14(rn, 0), FUNC14(ln, nr_left),
	       size * nr_right);

	/*
	 * Patch up the parent
	 */
	parent = FUNC12(s);

	pn = FUNC3(parent);
	location = FUNC2(FUNC4(left));
	FUNC0(&location);
	FUNC9(FUNC14(pn, parent_index),
		    &location, sizeof(__le64));

	location = FUNC2(FUNC4(right));
	FUNC0(&location);

	r = FUNC5(sizeof(__le64), pn, parent_index + 1,
		      FUNC7(rn->keys[0]), &location);
	if (r)
		return r;

	if (key < FUNC7(rn->keys[0])) {
		FUNC13(s->info, right);
		s->nodes[1] = left;
	} else {
		FUNC13(s->info, left);
		s->nodes[1] = right;
	}

	return 0;
}