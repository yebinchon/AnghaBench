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
typedef  scalar_t__ u32 ;
struct nouveau_mm_node {scalar_t__ length; scalar_t__ offset; scalar_t__ type; int /*<<< orphan*/  fl_entry; int /*<<< orphan*/  nl_entry; } ;
struct nouveau_mm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nouveau_mm_node* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nouveau_mm_node *
FUNC3(struct nouveau_mm *mm, struct nouveau_mm_node *a, u32 size)
{
	struct nouveau_mm_node *b;

	if (a->length == size)
		return a;

	b = FUNC0(sizeof(*b), GFP_KERNEL);
	if (FUNC2(b == NULL))
		return NULL;

	a->length -= size;
	b->offset  = a->offset + a->length;
	b->length  = size;
	b->type    = a->type;

	FUNC1(&b->nl_entry, &a->nl_entry);
	if (b->type == 0)
		FUNC1(&b->fl_entry, &a->fl_entry);
	return b;
}