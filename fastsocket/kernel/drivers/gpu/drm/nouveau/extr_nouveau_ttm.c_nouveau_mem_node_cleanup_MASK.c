#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_mem {TYPE_1__* vma; } ;
struct TYPE_3__ {scalar_t__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline void
FUNC2(struct nouveau_mem *node)
{
	if (node->vma[0].node) {
		FUNC1(&node->vma[0]);
		FUNC0(&node->vma[0]);
	}

	if (node->vma[1].node) {
		FUNC1(&node->vma[1]);
		FUNC0(&node->vma[1]);
	}
}