#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvc0_bar_priv {TYPE_2__* bar; } ;
struct nouveau_vma {scalar_t__ vm; } ;
struct nouveau_bar {int dummy; } ;
struct TYPE_4__ {scalar_t__ vm; TYPE_1__* pgd; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bar*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_bar *bar, struct nouveau_vma *vma)
{
	struct nvc0_bar_priv *priv = (void *)bar;
	int i = !(vma->vm == priv->bar[0].vm);

	FUNC1(vma);
	FUNC3(FUNC2(bar), priv->bar[i].pgd->addr, 5);
	FUNC0(vma);
}