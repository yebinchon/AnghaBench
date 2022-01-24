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
struct cfq_rb_root {scalar_t__ left; int /*<<< orphan*/  rb; } ;
struct cfq_group {int dummy; } ;

/* Variables and functions */
 struct cfq_group* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cfq_group *FUNC2(struct cfq_rb_root *root)
{
	if (!root->left)
		root->left = FUNC1(&root->rb);

	if (root->left)
		return FUNC0(root->left);

	return NULL;
}