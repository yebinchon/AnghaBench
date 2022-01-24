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
struct nvc0_grctx {int addr; struct nouveau_gpuobj* chan; scalar_t__ buffer_nr; struct nvc0_graph_priv* priv; int /*<<< orphan*/  mmio; int /*<<< orphan*/  data; } ;
struct nvc0_graph_priv {int size; scalar_t__ firmware; int /*<<< orphan*/  mmio_list; int /*<<< orphan*/  mmio_data; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (int) ; 
 struct nouveau_bar* FUNC1 (struct nvc0_graph_priv*) ; 
 int FUNC2 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nouveau_gpuobj**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nouveau_gpuobj**) ; 
 int /*<<< orphan*/  FUNC4 (struct nvc0_graph_priv*,char*,...) ; 
 struct nouveau_object* FUNC5 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_gpuobj*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvc0_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_bar*) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_bar*) ; 
 int FUNC12 (int) ; 

int
FUNC13(struct nvc0_graph_priv *priv, struct nvc0_grctx *info)
{
	struct nouveau_bar *bar = FUNC1(priv);
	struct nouveau_object *parent = FUNC5(priv);
	struct nouveau_gpuobj *chan;
	u32 size = (0x80000 + priv->size + 4095) & ~4095;
	int ret, i;

	/* allocate memory to for a "channel", which we'll use to generate
	 * the default context values
	 */
	ret = FUNC2(parent, NULL, size, 0x1000,
				 NVOBJ_FLAG_ZERO_ALLOC, &info->chan);
	chan = info->chan;
	if (ret) {
		FUNC4(priv, "failed to allocate channel memory, %d\n", ret);
		return ret;
	}

	/* PGD pointer */
	FUNC7(chan, 0x0200, FUNC0(chan->addr + 0x1000));
	FUNC7(chan, 0x0204, FUNC12(chan->addr + 0x1000));
	FUNC7(chan, 0x0208, 0xffffffff);
	FUNC7(chan, 0x020c, 0x000000ff);

	/* PGT[0] pointer */
	FUNC7(chan, 0x1000, 0x00000000);
	FUNC7(chan, 0x1004, 0x00000001 | (chan->addr + 0x2000) >> 8);

	/* identity-map the whole "channel" into its own vm */
	for (i = 0; i < size / 4096; i++) {
		u64 addr = ((chan->addr + (i * 4096)) >> 8) | 1;
		FUNC7(chan, 0x2000 + (i * 8), FUNC0(addr));
		FUNC7(chan, 0x2004 + (i * 8), FUNC12(addr));
	}

	/* context pointer (virt) */
	FUNC7(chan, 0x0210, 0x00080004);
	FUNC7(chan, 0x0214, 0x00000000);

	bar->flush(bar);

	FUNC8(priv, 0x100cb8, (chan->addr + 0x1000) >> 8);
	FUNC8(priv, 0x100cbc, 0x80000001);
	FUNC6(priv, 0x100c80, 0x00008000, 0x00008000);

	/* setup default state for mmio list construction */
	info->data = priv->mmio_data;
	info->mmio = priv->mmio_list;
	info->addr = 0x2000 + (i * 8);
	info->priv = priv;
	info->buffer_nr = 0;

	if (priv->firmware) {
		FUNC8(priv, 0x409840, 0x00000030);
		FUNC8(priv, 0x409500, 0x80000000 | chan->addr >> 12);
		FUNC8(priv, 0x409504, 0x00000003);
		if (!FUNC6(priv, 0x409800, 0x00000010, 0x00000010))
			FUNC4(priv, "load_ctx timeout\n");

		FUNC7(chan, 0x8001c, 1);
		FUNC7(chan, 0x80020, 0);
		FUNC7(chan, 0x80028, 0);
		FUNC7(chan, 0x8002c, 0);
		bar->flush(bar);
		return 0;
	}

	/* HUB_FUC(SET_CHAN) */
	FUNC8(priv, 0x409840, 0x80000000);
	FUNC8(priv, 0x409500, 0x80000000 | chan->addr >> 12);
	FUNC8(priv, 0x409504, 0x00000001);
	if (!FUNC6(priv, 0x409800, 0x80000000, 0x80000000)) {
		FUNC4(priv, "HUB_SET_CHAN timeout\n");
		FUNC9(priv);
		FUNC3(NULL, &info->chan);
		return -EBUSY;
	}

	return 0;
}