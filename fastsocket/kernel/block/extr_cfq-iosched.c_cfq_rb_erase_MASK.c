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
struct rb_node {int dummy; } ;
struct cfq_rb_root {int /*<<< orphan*/  count; int /*<<< orphan*/  rb; struct rb_node* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct rb_node *n, struct cfq_rb_root *root)
{
	if (root->left == n)
		root->left = NULL;
	FUNC0(n, &root->rb);
	--root->count;
}