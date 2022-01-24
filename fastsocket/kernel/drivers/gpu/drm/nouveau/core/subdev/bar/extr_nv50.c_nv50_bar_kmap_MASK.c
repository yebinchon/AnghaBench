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
typedef  int /*<<< orphan*/  u32 ;
struct nv50_bar_priv {int /*<<< orphan*/  bar3_vm; } ;
struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int size; } ;
struct nouveau_bar {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vma*,struct nouveau_mem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bar*) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_bar *bar, struct nouveau_mem *mem,
	      u32 flags, struct nouveau_vma *vma)
{
	struct nv50_bar_priv *priv = (void *)bar;
	int ret;

	ret = FUNC0(priv->bar3_vm, mem->size << 12, 12, flags, vma);
	if (ret)
		return ret;

	FUNC1(vma, mem);
	FUNC2(FUNC3(bar), 6);
	return 0;
}