#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {int max; } ;
struct nve0_fifo_priv {TYPE_1__ base; struct nve0_fifo_engn* engine; } ;
struct nve0_fifo_engn {size_t cur_playlist; struct nouveau_gpuobj** playlist; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct nouveau_bar* FUNC0 (struct nve0_fifo_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nouveau_gpuobj**) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_fifo_priv*,char*,...) ; 
 TYPE_2__* FUNC3 (struct nve0_fifo_priv*) ; 
 int FUNC4 (struct nve0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nve0_fifo_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_gpuobj*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nve0_fifo_priv*,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_bar*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct nve0_fifo_priv *priv, u32 engine)
{
	struct nouveau_bar *bar = FUNC0(priv);
	struct nve0_fifo_engn *engn = &priv->engine[engine];
	struct nouveau_gpuobj *cur;
	u32 match = (engine << 16) | 0x00000001;
	int i, p;

	cur = engn->playlist[engn->cur_playlist];
	if (FUNC9(cur == NULL)) {
		int ret = FUNC1(FUNC3(priv)->parent, NULL,
					     0x8000, 0x1000, 0, &cur);
		if (ret) {
			FUNC2(priv, "playlist alloc failed\n");
			return;
		}

		engn->playlist[engn->cur_playlist] = cur;
	}

	engn->cur_playlist = !engn->cur_playlist;

	for (i = 0, p = 0; i < priv->base.max; i++) {
		u32 ctrl = FUNC4(priv, 0x800004 + (i * 8)) & 0x001f0001;
		if (ctrl != match)
			continue;
		FUNC6(cur, p + 0, i);
		FUNC6(cur, p + 4, 0x00000000);
		p += 8;
	}
	bar->flush(bar);

	FUNC7(priv, 0x002270, cur->addr >> 12);
	FUNC7(priv, 0x002274, (engine << 20) | (p >> 3));
	if (!FUNC5(priv, 0x002284 + (engine * 4), 0x00100000, 0x00000000))
		FUNC2(priv, "playlist %d update timeout\n", engine);
}