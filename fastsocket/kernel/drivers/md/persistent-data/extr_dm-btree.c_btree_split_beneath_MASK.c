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
struct shadow_spine {int count; struct dm_block** nodes; TYPE_3__* info; } ;
struct dm_block {int dummy; } ;
struct TYPE_6__ {void* value_size; void* max_entries; void* nr_entries; void* flags; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_2__ header; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_5__ {int size; } ;
struct TYPE_7__ {int /*<<< orphan*/  tm; TYPE_1__ value_type; } ;

/* Variables and functions */
 int INTERNAL_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct btree_node* FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (TYPE_3__*,struct dm_block**) ; 
 struct dm_block* FUNC13 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct dm_block*) ; 
 int /*<<< orphan*/ * FUNC15 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC16(struct shadow_spine *s, uint64_t key)
{
	int r;
	size_t size;
	unsigned nr_left, nr_right;
	struct dm_block *left, *right, *new_parent;
	struct btree_node *pn, *ln, *rn;
	__le64 val;

	new_parent = FUNC13(s);

	r = FUNC12(s->info, &left);
	if (r < 0)
		return r;

	r = FUNC12(s->info, &right);
	if (r < 0) {
		/* FIXME: put left */
		return r;
	}

	pn = FUNC4(new_parent);
	ln = FUNC4(left);
	rn = FUNC4(right);

	nr_left = FUNC8(pn->header.nr_entries) / 2;
	nr_right = FUNC8(pn->header.nr_entries) - nr_left;

	ln->header.flags = pn->header.flags;
	ln->header.nr_entries = FUNC2(nr_left);
	ln->header.max_entries = pn->header.max_entries;
	ln->header.value_size = pn->header.value_size;

	rn->header.flags = pn->header.flags;
	rn->header.nr_entries = FUNC2(nr_right);
	rn->header.max_entries = pn->header.max_entries;
	rn->header.value_size = pn->header.value_size;

	FUNC10(ln->keys, pn->keys, nr_left * sizeof(pn->keys[0]));
	FUNC10(rn->keys, pn->keys + nr_left, nr_right * sizeof(pn->keys[0]));

	size = FUNC8(pn->header.flags) & INTERNAL_NODE ?
		sizeof(__le64) : s->info->value_type.size;
	FUNC10(FUNC15(ln, 0), FUNC15(pn, 0), nr_left * size);
	FUNC10(FUNC15(rn, 0), FUNC15(pn, nr_left),
	       nr_right * size);

	/* new_parent should just point to l and r now */
	pn->header.flags = FUNC2(INTERNAL_NODE);
	pn->header.nr_entries = FUNC2(2);
	pn->header.max_entries = FUNC2(
		FUNC1(sizeof(__le64),
				 FUNC6(
					 FUNC7(s->info->tm))));
	pn->header.value_size = FUNC2(sizeof(__le64));

	val = FUNC3(FUNC5(left));
	FUNC0(&val);
	pn->keys[0] = ln->keys[0];
	FUNC11(FUNC15(pn, 0), &val, sizeof(__le64));

	val = FUNC3(FUNC5(right));
	FUNC0(&val);
	pn->keys[1] = rn->keys[0];
	FUNC11(FUNC15(pn, 1), &val, sizeof(__le64));

	/*
	 * rejig the spine.  This is ugly, since it knows too
	 * much about the spine
	 */
	if (s->nodes[0] != new_parent) {
		FUNC14(s->info, s->nodes[0]);
		s->nodes[0] = new_parent;
	}
	if (key < FUNC9(rn->keys[0])) {
		FUNC14(s->info, right);
		s->nodes[1] = left;
	} else {
		FUNC14(s->info, left);
		s->nodes[1] = right;
	}
	s->count = 2;

	return 0;
}