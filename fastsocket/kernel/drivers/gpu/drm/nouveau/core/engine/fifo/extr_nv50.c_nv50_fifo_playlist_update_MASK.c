#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int min; int max; } ;
struct nv50_fifo_priv {size_t cur_playlist; TYPE_1__ base; struct nouveau_gpuobj** playlist; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;

/* Variables and functions */
 struct nouveau_bar* FUNC0 (struct nv50_fifo_priv*) ; 
 int FUNC1 (struct nv50_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_gpuobj*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bar*) ; 

void
FUNC5(struct nv50_fifo_priv *priv)
{
	struct nouveau_bar *bar = FUNC0(priv);
	struct nouveau_gpuobj *cur;
	int i, p;

	cur = priv->playlist[priv->cur_playlist];
	priv->cur_playlist = !priv->cur_playlist;

	for (i = priv->base.min, p = 0; i < priv->base.max; i++) {
		if (FUNC1(priv, 0x002600 + (i * 4)) & 0x80000000)
			FUNC2(cur, p++ * 4, i);
	}

	bar->flush(bar);

	FUNC3(priv, 0x0032f4, cur->addr >> 12);
	FUNC3(priv, 0x0032ec, p);
	FUNC3(priv, 0x002500, 0x00000101);
}