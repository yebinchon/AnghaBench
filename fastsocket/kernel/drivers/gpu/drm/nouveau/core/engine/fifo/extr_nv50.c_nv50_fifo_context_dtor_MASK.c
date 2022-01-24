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
struct nv50_fifo_base {int /*<<< orphan*/  base; int /*<<< orphan*/  cache; int /*<<< orphan*/  ramfc; int /*<<< orphan*/  eng; int /*<<< orphan*/  pgd; int /*<<< orphan*/  vm; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct nouveau_object *object)
{
	struct nv50_fifo_base *base = (void *)object;
	FUNC2(NULL, &base->vm, base->pgd);
	FUNC1(NULL, &base->pgd);
	FUNC1(NULL, &base->eng);
	FUNC1(NULL, &base->ramfc);
	FUNC1(NULL, &base->cache);
	FUNC0(&base->base);
}