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
struct node_header {int /*<<< orphan*/  flags; int /*<<< orphan*/  csum; int /*<<< orphan*/  blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct btree_node {struct node_header header; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct btree_node* FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_block_validator*,struct dm_block*,int) ; 

__attribute__((used)) static void FUNC7(struct dm_block_validator *v,
				   struct dm_block *b,
				   size_t block_size)
{
	struct btree_node *n = FUNC3(b);
	struct node_header *h = &n->header;

	h->blocknr = FUNC2(FUNC4(b));
	h->csum = FUNC1(FUNC5(&h->flags,
					     block_size - sizeof(__le32),
					     BTREE_CSUM_XOR));

	FUNC0(FUNC6(v, b, 4096));
}