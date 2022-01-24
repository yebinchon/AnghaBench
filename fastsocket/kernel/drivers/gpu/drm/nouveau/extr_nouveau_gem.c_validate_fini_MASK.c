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
struct validate_op {int /*<<< orphan*/  both_list; int /*<<< orphan*/  gart_list; int /*<<< orphan*/  vram_list; } ;
struct nouveau_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nouveau_fence*) ; 

__attribute__((used)) static void
FUNC1(struct validate_op *op, struct nouveau_fence* fence)
{
	FUNC0(&op->vram_list, fence);
	FUNC0(&op->gart_list, fence);
	FUNC0(&op->both_list, fence);
}