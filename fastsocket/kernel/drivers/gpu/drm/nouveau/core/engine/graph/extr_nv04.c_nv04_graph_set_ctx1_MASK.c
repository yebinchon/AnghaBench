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
struct nv04_graph_priv {int dummy; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 scalar_t__ NV04_PGRAPH_CTX_CACHE1 ; 
 scalar_t__ NV04_PGRAPH_CTX_SWITCH1 ; 
 int /*<<< orphan*/  NV04_PGRAPH_TRAPPED_ADDR ; 
 int FUNC0 (struct nv04_graph_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_graph_priv*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_object *object, u32 mask, u32 value)
{
	struct nv04_graph_priv *priv = (void *)object->engine;
	int subc = (FUNC0(priv, NV04_PGRAPH_TRAPPED_ADDR) >> 13) & 0x7;
	u32 tmp;

	tmp  = FUNC1(object, 0x00);
	tmp &= ~mask;
	tmp |= value;
	FUNC2(object, 0x00, tmp);

	FUNC3(priv, NV04_PGRAPH_CTX_SWITCH1, tmp);
	FUNC3(priv, NV04_PGRAPH_CTX_CACHE1 + (subc<<2), tmp);
}