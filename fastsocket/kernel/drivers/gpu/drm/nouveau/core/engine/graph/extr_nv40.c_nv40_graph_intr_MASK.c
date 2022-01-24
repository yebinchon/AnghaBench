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
struct nv40_graph_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_NSOURCE ; 
 int NV03_PGRAPH_NSOURCE_DMA_VTX_PROTECTION ; 
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
 struct nouveau_fifo* FUNC4 (struct nouveau_subdev*) ; 
 struct nouveau_handle* FUNC5 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  nv04_graph_nsource ; 
 int /*<<< orphan*/  nv10_graph_intr_name ; 
 int /*<<< orphan*/  nv10_graph_nstatus ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_engine* FUNC8 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct nv40_graph_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct nv40_graph_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nv40_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nv40_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (struct nouveau_fifo*,struct nouveau_object*) ; 

__attribute__((used)) static void
FUNC15(struct nouveau_subdev *subdev)
{
	struct nouveau_fifo *pfifo = FUNC4(subdev);
	struct nouveau_engine *engine = FUNC8(subdev);
	struct nouveau_object *engctx;
	struct nouveau_handle *handle = NULL;
	struct nv40_graph_priv *priv = (void *)subdev;
	u32 stat = FUNC11(priv, NV03_PGRAPH_INTR);
	u32 nsource = FUNC11(priv, NV03_PGRAPH_NSOURCE);
	u32 nstatus = FUNC11(priv, NV03_PGRAPH_NSTATUS);
	u32 inst = FUNC11(priv, 0x40032c) & 0x000fffff;
	u32 addr = FUNC11(priv, NV04_PGRAPH_TRAPPED_ADDR);
	u32 subc = (addr & 0x00070000) >> 16;
	u32 mthd = (addr & 0x00001ffc);
	u32 data = FUNC11(priv, NV04_PGRAPH_TRAPPED_DATA);
	u32 class = FUNC11(priv, 0x400160 + subc * 4) & 0xffff;
	u32 show = stat;
	int chid;

	engctx = FUNC2(engine, inst);
	chid   = pfifo->chid(pfifo, engctx);

	if (stat & NV_PGRAPH_INTR_ERROR) {
		if (nsource & NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD) {
			handle = FUNC5(engctx, class);
			if (handle && !FUNC7(handle->object, mthd, data))
				show &= ~NV_PGRAPH_INTR_ERROR;
			FUNC6(handle);
		}

		if (nsource & NV03_PGRAPH_NSOURCE_DMA_VTX_PROTECTION) {
			FUNC10(priv, 0x402000, 0, 0);
		}
	}

	FUNC12(priv, NV03_PGRAPH_INTR, stat);
	FUNC12(priv, NV04_PGRAPH_FIFO, 0x00000001);

	if (show) {
		FUNC9(priv, "%s", "");
		FUNC0(nv10_graph_intr_name, show);
		FUNC13(" nsource:");
		FUNC0(nv04_graph_nsource, nsource);
		FUNC13(" nstatus:");
		FUNC0(nv10_graph_nstatus, nstatus);
		FUNC13("\n");
		FUNC9(priv,
			 "ch %d [0x%08x %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
			 chid, inst << 4, FUNC1(engctx), subc,
			 class, mthd, data);
	}

	FUNC3(engctx);
}