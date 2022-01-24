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
struct nv04_timer_priv {int /*<<< orphan*/  base; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PTIMER_INTR_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_timer_priv*,char*,int) ; 
 int FUNC2 (struct nv04_timer_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_timer_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_subdev *subdev)
{
	struct nv04_timer_priv *priv = (void *)subdev;
	u32 stat = FUNC2(priv, NV04_PTIMER_INTR_0);

	if (stat & 0x00000001) {
		FUNC0(&priv->base);
		FUNC3(priv, NV04_PTIMER_INTR_0, 0x00000001);
		stat &= ~0x00000001;
	}

	if (stat) {
		FUNC1(priv, "unknown stat 0x%08x\n", stat);
		FUNC3(priv, NV04_PTIMER_INTR_0, stat);
	}
}