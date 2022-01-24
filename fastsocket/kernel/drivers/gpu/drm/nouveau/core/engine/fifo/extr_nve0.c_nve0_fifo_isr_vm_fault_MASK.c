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
typedef  int u64 ;
typedef  int u32 ;
struct nve0_fifo_priv {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_enum {scalar_t__ data2; } ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*) ; 
 struct nouveau_engine* FUNC3 (struct nve0_fifo_priv*,scalar_t__) ; 
 struct nouveau_enum* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nve0_fifo_priv*,char*,char*,int) ; 
 int FUNC6 (struct nve0_fifo_priv*,int) ; 
 int /*<<< orphan*/  nve0_fifo_fault_gpcclient ; 
 int /*<<< orphan*/  nve0_fifo_fault_hubclient ; 
 int /*<<< orphan*/  nve0_fifo_fault_reason ; 
 int /*<<< orphan*/  nve0_fifo_fault_unit ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(struct nve0_fifo_priv *priv, int unit)
{
	u32 inst = FUNC6(priv, 0x2800 + (unit * 0x10));
	u32 valo = FUNC6(priv, 0x2804 + (unit * 0x10));
	u32 vahi = FUNC6(priv, 0x2808 + (unit * 0x10));
	u32 stat = FUNC6(priv, 0x280c + (unit * 0x10));
	u32 client = (stat & 0x00001f00) >> 8;
	const struct nouveau_enum *en;
	struct nouveau_engine *engine;
	struct nouveau_object *engctx = NULL;

	FUNC5(priv, "PFIFO: %s fault at 0x%010llx [", (stat & 0x00000080) ?
		       "write" : "read", (u64)vahi << 32 | valo);
	FUNC4(nve0_fifo_fault_reason, stat & 0x0000000f);
	FUNC7("] from ");
	en = FUNC4(nve0_fifo_fault_unit, unit);
	if (stat & 0x00000040) {
		FUNC7("/");
		FUNC4(nve0_fifo_fault_hubclient, client);
	} else {
		FUNC7("/GPC%d/", (stat & 0x1f000000) >> 24);
		FUNC4(nve0_fifo_fault_gpcclient, client);
	}

	if (en && en->data2) {
		engine = FUNC3(priv, en->data2);
		if (engine)
			engctx = FUNC1(engine, inst);

	}

	FUNC7(" on channel 0x%010llx [%s]\n", (u64)inst << 12,
			FUNC0(engctx));

	FUNC2(engctx);
}