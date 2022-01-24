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
typedef  int u32 ;
struct nv20_graph_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_NSOURCE ; 
 int NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD ; 
 int NV03_PGRAPH_NSTATUS ; 
 int NV04_PGRAPH_FIFO ; 
 int NV04_PGRAPH_TRAPPED_ADDR ; 
 int NV04_PGRAPH_TRAPPED_DATA ; 
 int NV_PGRAPH_INTR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC2 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*) ; 
 struct nouveau_handle* FUNC4 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  nv04_graph_nsource ; 
 int /*<<< orphan*/  nv10_graph_intr_name ; 
 int /*<<< orphan*/  nv10_graph_nstatus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_engine* FUNC7 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv20_graph_priv*,char*,...) ; 
 int FUNC9 (struct nv20_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nv20_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void
FUNC12(struct nouveau_subdev *subdev)
{
	struct nouveau_engine *engine = FUNC7(subdev);
	struct nouveau_object *engctx;
	struct nouveau_handle *handle;
	struct nv20_graph_priv *priv = (void *)subdev;
	u32 stat = FUNC9(priv, NV03_PGRAPH_INTR);
	u32 nsource = FUNC9(priv, NV03_PGRAPH_NSOURCE);
	u32 nstatus = FUNC9(priv, NV03_PGRAPH_NSTATUS);
	u32 addr = FUNC9(priv, NV04_PGRAPH_TRAPPED_ADDR);
	u32 chid = (addr & 0x01f00000) >> 20;
	u32 subc = (addr & 0x00070000) >> 16;
	u32 mthd = (addr & 0x00001ffc);
	u32 data = FUNC9(priv, NV04_PGRAPH_TRAPPED_DATA);
	u32 class = FUNC9(priv, 0x400160 + subc * 4) & 0xfff;
	u32 show = stat;

	engctx = FUNC2(engine, chid);
	if (stat & NV_PGRAPH_INTR_ERROR) {
		if (nsource & NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD) {
			handle = FUNC4(engctx, class);
			if (handle && !FUNC6(handle->object, mthd, data))
				show &= ~NV_PGRAPH_INTR_ERROR;
			FUNC5(handle);
		}
	}

	FUNC10(priv, NV03_PGRAPH_INTR, stat);
	FUNC10(priv, NV04_PGRAPH_FIFO, 0x00000001);

	if (show) {
		FUNC8(priv, "%s", "");
		FUNC0(nv10_graph_intr_name, show);
		FUNC11(" nsource:");
		FUNC0(nv04_graph_nsource, nsource);
		FUNC11(" nstatus:");
		FUNC0(nv10_graph_nstatus, nstatus);
		FUNC11("\n");
		FUNC8(priv,
			 "ch %d [%s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
			 chid, FUNC1(engctx), subc, class, mthd,
			 data);
	}

	FUNC3(engctx);
}