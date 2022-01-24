#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nv50_instobj_priv {TYPE_1__* mem; } ;
struct nv50_instmem_priv {int addr; int /*<<< orphan*/  lock; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_instmem_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_instmem_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static u32
FUNC5(struct nouveau_object *object, u64 offset)
{
	struct nv50_instmem_priv *priv = (void *)object->engine;
	struct nv50_instobj_priv *node = (void *)object;
	unsigned long flags;
	u64 base = (node->mem->offset + offset) & 0xffffff00000ULL;
	u64 addr = (node->mem->offset + offset) & 0x000000fffffULL;
	u32 data;

	FUNC2(&priv->lock, flags);
	if (FUNC4(priv->addr != base)) {
		FUNC1(priv, 0x001700, base >> 16);
		priv->addr = base;
	}
	data = FUNC0(priv, 0x700000 + addr);
	FUNC3(&priv->lock, flags);
	return data;
}