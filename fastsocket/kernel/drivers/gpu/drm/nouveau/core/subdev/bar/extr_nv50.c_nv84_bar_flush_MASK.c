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
struct nv50_bar_priv {int /*<<< orphan*/  lock; } ;
struct nouveau_bar {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_bar_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_bar_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bar*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct nouveau_bar *bar)
{
	struct nv50_bar_priv *priv = (void *)bar;
	unsigned long flags;
	FUNC3(&priv->lock, flags);
	FUNC2(bar, 0x070000, 0x00000001);
	if (!FUNC0(priv, 0x070000, 0x00000002, 0x00000000))
		FUNC1(priv, "flush timeout\n");
	FUNC4(&priv->lock, flags);
}