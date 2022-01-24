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
struct nv10_graph_priv {int /*<<< orphan*/  lock; struct nv10_graph_chan** chan; } ;
struct nv10_graph_chan {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_namedb {int dummy; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_NSOURCE ; 
 int NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD ; 
 int NV03_PGRAPH_NSTATUS ; 
 int NV04_PGRAPH_FIFO ; 
 int NV04_PGRAPH_TRAPPED_ADDR ; 
 int NV04_PGRAPH_TRAPPED_DATA ; 
 int /*<<< orphan*/  NV_NAMEDB_CLASS ; 
 int NV_PGRAPH_INTR_CONTEXT_SWITCH ; 
 int NV_PGRAPH_INTR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv10_graph_chan*) ; 
 struct nouveau_handle* FUNC2 (struct nouveau_namedb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  nv04_graph_nsource ; 
 int /*<<< orphan*/  FUNC4 (struct nv10_graph_priv*) ; 
 int /*<<< orphan*/  nv10_graph_intr_name ; 
 int /*<<< orphan*/  nv10_graph_nstatus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv10_graph_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct nv10_graph_chan*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nv10_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nv10_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC14(struct nouveau_subdev *subdev)
{
	struct nv10_graph_priv *priv = (void *)subdev;
	struct nv10_graph_chan *chan = NULL;
	struct nouveau_namedb *namedb = NULL;
	struct nouveau_handle *handle = NULL;
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
	unsigned long flags;

	FUNC12(&priv->lock, flags);
	chan = priv->chan[chid];
	if (chan)
		namedb = (void *)FUNC8(FUNC7(chan), NV_NAMEDB_CLASS);
	FUNC13(&priv->lock, flags);

	if (stat & NV_PGRAPH_INTR_ERROR) {
		if (chan && (nsource & NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD)) {
			handle = FUNC2(namedb, class);
			if (handle && !FUNC5(handle->object, mthd, data))
				show &= ~NV_PGRAPH_INTR_ERROR;
		}
	}

	if (stat & NV_PGRAPH_INTR_CONTEXT_SWITCH) {
		FUNC10(priv, NV03_PGRAPH_INTR, NV_PGRAPH_INTR_CONTEXT_SWITCH);
		stat &= ~NV_PGRAPH_INTR_CONTEXT_SWITCH;
		show &= ~NV_PGRAPH_INTR_CONTEXT_SWITCH;
		FUNC4(priv);
	}

	FUNC10(priv, NV03_PGRAPH_INTR, stat);
	FUNC10(priv, NV04_PGRAPH_FIFO, 0x00000001);

	if (show) {
		FUNC6(priv, "%s", "");
		FUNC0(nv10_graph_intr_name, show);
		FUNC11(" nsource:");
		FUNC0(nv04_graph_nsource, nsource);
		FUNC11(" nstatus:");
		FUNC0(nv10_graph_nstatus, nstatus);
		FUNC11("\n");
		FUNC6(priv,
			 "ch %d [%s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\n",
			 chid, FUNC1(chan), subc, class, mthd,
			 data);
	}

	FUNC3(handle);
}