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
struct nvc0_fifo_priv {size_t cur_playlist; struct nouveau_gpuobj** playlist; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;

/* Variables and functions */
 struct nouveau_bar* FUNC0 (struct nvc0_fifo_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_fifo_priv*,char*) ; 
 int FUNC2 (struct nvc0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_fifo_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_gpuobj*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvc0_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_bar*) ; 

__attribute__((used)) static void
FUNC7(struct nvc0_fifo_priv *priv)
{
	struct nouveau_bar *bar = FUNC0(priv);
	struct nouveau_gpuobj *cur;
	int i, p;

	cur = priv->playlist[priv->cur_playlist];
	priv->cur_playlist = !priv->cur_playlist;

	for (i = 0, p = 0; i < 128; i++) {
		if (!(FUNC2(priv, 0x003004 + (i * 8)) & 1))
			continue;
		FUNC4(cur, p + 0, i);
		FUNC4(cur, p + 4, 0x00000004);
		p += 8;
	}
	bar->flush(bar);

	FUNC5(priv, 0x002270, cur->addr >> 12);
	FUNC5(priv, 0x002274, 0x01f00000 | (p >> 3));
	if (!FUNC3(priv, 0x00227c, 0x00100000, 0x00000000))
		FUNC1(priv, "playlist update failed\n");
}