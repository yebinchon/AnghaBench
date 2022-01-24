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
struct nv50_graph_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC2 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct nouveau_fifo* FUNC5 (struct nouveau_subdev*) ; 
 struct nouveau_handle* FUNC6 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  nv50_data_error_names ; 
 int /*<<< orphan*/  nv50_graph_intr_name ; 
 int /*<<< orphan*/  FUNC8 (struct nv50_graph_priv*,int,int,int,struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_engine* FUNC10 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC11 (struct nv50_graph_priv*,char*,...) ; 
 int FUNC12 (struct nv50_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nv50_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (struct nouveau_fifo*,struct nouveau_object*) ; 

__attribute__((used)) static void
FUNC16(struct nouveau_subdev *subdev)
{
	struct nouveau_fifo *pfifo = FUNC5(subdev);
	struct nouveau_engine *engine = FUNC10(subdev);
	struct nouveau_object *engctx;
	struct nouveau_handle *handle = NULL;
	struct nv50_graph_priv *priv = (void *)subdev;
	u32 stat = FUNC12(priv, 0x400100);
	u32 inst = FUNC12(priv, 0x40032c) & 0x0fffffff;
	u32 addr = FUNC12(priv, 0x400704);
	u32 subc = (addr & 0x00070000) >> 16;
	u32 mthd = (addr & 0x00001ffc);
	u32 data = FUNC12(priv, 0x400708);
	u32 class = FUNC12(priv, 0x400814);
	u32 show = stat;
	int chid;

	engctx = FUNC2(engine, inst);
	chid   = pfifo->chid(pfifo, engctx);

	if (stat & 0x00000010) {
		handle = FUNC6(engctx, class);
		if (handle && !FUNC9(handle->object, mthd, data))
			show &= ~0x00000010;
		FUNC7(handle);
	}

	if (show & 0x00100000) {
		u32 ecode = FUNC12(priv, 0x400110);
		FUNC11(priv, "DATA_ERROR ");
		FUNC4(nv50_data_error_names, ecode);
		FUNC14("\n");
	}

	if (stat & 0x00200000) {
		if (!FUNC8(priv, show, chid, (u64)inst << 12,
				engctx))
			show &= ~0x00200000;
	}

	FUNC13(priv, 0x400100, stat);
	FUNC13(priv, 0x400500, 0x00010001);

	if (show) {
		FUNC11(priv, "%s", "");
		FUNC0(nv50_graph_intr_name, show);
		FUNC14("\n");
		FUNC11(priv,
			 "ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
			 chid, (u64)inst << 12, FUNC1(engctx),
			 subc, class, mthd, data);
	}

	if (FUNC12(priv, 0x400824) & (1 << 31))
		FUNC13(priv, 0x400824, FUNC12(priv, 0x400824) & ~(1 << 31));

	FUNC3(engctx);
}