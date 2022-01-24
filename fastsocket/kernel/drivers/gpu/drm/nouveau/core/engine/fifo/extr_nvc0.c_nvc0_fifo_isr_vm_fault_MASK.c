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
struct nvc0_fifo_priv {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_enum {scalar_t__ data2; } ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*) ; 
 struct nouveau_engine* FUNC3 (struct nvc0_fifo_priv*,scalar_t__) ; 
 struct nouveau_enum* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvc0_fifo_priv*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_fifo_priv*,int,int,int) ; 
 int FUNC7 (struct nvc0_fifo_priv*,int) ; 
 int /*<<< orphan*/  nvc0_fifo_fault_gpcclient ; 
 int /*<<< orphan*/  nvc0_fifo_fault_hubclient ; 
 int /*<<< orphan*/  nvc0_fifo_fault_reason ; 
 int /*<<< orphan*/  nvc0_fifo_fault_unit ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9(struct nvc0_fifo_priv *priv, int unit)
{
	u32 inst = FUNC7(priv, 0x002800 + (unit * 0x10));
	u32 valo = FUNC7(priv, 0x002804 + (unit * 0x10));
	u32 vahi = FUNC7(priv, 0x002808 + (unit * 0x10));
	u32 stat = FUNC7(priv, 0x00280c + (unit * 0x10));
	u32 client = (stat & 0x00001f00) >> 8;
	const struct nouveau_enum *en;
	struct nouveau_engine *engine;
	struct nouveau_object *engctx = NULL;

	switch (unit) {
	case 3: /* PEEPHOLE */
		FUNC6(priv, 0x001718, 0x00000000, 0x00000000);
		break;
	case 4: /* BAR1 */
		FUNC6(priv, 0x001704, 0x00000000, 0x00000000);
		break;
	case 5: /* BAR3 */
		FUNC6(priv, 0x001714, 0x00000000, 0x00000000);
		break;
	default:
		break;
	}

	FUNC5(priv, "%s fault at 0x%010llx [", (stat & 0x00000080) ?
		 "write" : "read", (u64)vahi << 32 | valo);
	FUNC4(nvc0_fifo_fault_reason, stat & 0x0000000f);
	FUNC8("] from ");
	en = FUNC4(nvc0_fifo_fault_unit, unit);
	if (stat & 0x00000040) {
		FUNC8("/");
		FUNC4(nvc0_fifo_fault_hubclient, client);
	} else {
		FUNC8("/GPC%d/", (stat & 0x1f000000) >> 24);
		FUNC4(nvc0_fifo_fault_gpcclient, client);
	}

	if (en && en->data2) {
		engine = FUNC3(priv, en->data2);
		if (engine)
			engctx = FUNC1(engine, inst);

	}
	FUNC8(" on channel 0x%010llx [%s]\n", (u64)inst << 12,
			FUNC0(engctx));

	FUNC2(engctx);
}