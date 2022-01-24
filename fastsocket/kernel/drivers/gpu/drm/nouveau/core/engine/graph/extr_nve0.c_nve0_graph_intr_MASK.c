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
struct nvc0_graph_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct nouveau_fifo* FUNC4 (struct nouveau_subdev*) ; 
 struct nouveau_handle* FUNC5 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  nv50_data_error_names ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_engine* FUNC8 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvc0_graph_priv*,char*,...) ; 
 int FUNC10 (struct nvc0_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nvc0_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvc0_graph_priv*,int,int,struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC15 (struct nouveau_fifo*,struct nouveau_object*) ; 

__attribute__((used)) static void
FUNC16(struct nouveau_subdev *subdev)
{
	struct nouveau_fifo *pfifo = FUNC4(subdev);
	struct nouveau_engine *engine = FUNC8(subdev);
	struct nouveau_object *engctx;
	struct nouveau_handle *handle;
	struct nvc0_graph_priv *priv = (void *)subdev;
	u64 inst = FUNC10(priv, 0x409b00) & 0x0fffffff;
	u32 stat = FUNC10(priv, 0x400100);
	u32 addr = FUNC10(priv, 0x400704);
	u32 mthd = (addr & 0x00003ffc);
	u32 subc = (addr & 0x00070000) >> 16;
	u32 data = FUNC10(priv, 0x400708);
	u32 code = FUNC10(priv, 0x400110);
	u32 class = FUNC10(priv, 0x404200 + (subc * 4));
	int chid;

	engctx = FUNC1(engine, inst);
	chid   = pfifo->chid(pfifo, engctx);

	if (stat & 0x00000010) {
		handle = FUNC5(engctx, class);
		if (!handle || FUNC7(handle->object, mthd, data)) {
			FUNC9(priv,
				 "ILLEGAL_MTHD ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
				 chid, inst, FUNC0(engctx), subc,
				 class, mthd, data);
		}
		FUNC6(handle);
		FUNC11(priv, 0x400100, 0x00000010);
		stat &= ~0x00000010;
	}

	if (stat & 0x00000020) {
		FUNC9(priv,
			 "ILLEGAL_CLASS ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
			 chid, inst, FUNC0(engctx), subc, class,
			 mthd, data);
		FUNC11(priv, 0x400100, 0x00000020);
		stat &= ~0x00000020;
	}

	if (stat & 0x00100000) {
		FUNC9(priv, "DATA_ERROR [");
		FUNC3(nv50_data_error_names, code);
		FUNC14("] ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
			chid, inst, FUNC0(engctx), subc, class,
			mthd, data);
		FUNC11(priv, 0x400100, 0x00100000);
		stat &= ~0x00100000;
	}

	if (stat & 0x00200000) {
		FUNC13(priv, chid, inst, engctx);
		FUNC11(priv, 0x400100, 0x00200000);
		stat &= ~0x00200000;
	}

	if (stat & 0x00080000) {
		FUNC12(priv);
		FUNC11(priv, 0x400100, 0x00080000);
		stat &= ~0x00080000;
	}

	if (stat) {
		FUNC9(priv, "unknown stat 0x%08x\n", stat);
		FUNC11(priv, 0x400100, stat);
	}

	FUNC11(priv, 0x400500, 0x00010001);
	FUNC2(engctx);
}