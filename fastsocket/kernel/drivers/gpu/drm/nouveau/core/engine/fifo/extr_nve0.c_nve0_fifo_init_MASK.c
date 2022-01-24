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
struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {TYPE_1__ bar; } ;
struct nve0_fifo_priv {int spoon_nr; TYPE_2__ user; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_fifo_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nve0_fifo_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nve0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nve0_fifo_priv*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *object)
{
	struct nve0_fifo_priv *priv = (void *)object;
	int ret, i;

	ret = FUNC1(&priv->base);
	if (ret)
		return ret;

	/* enable all available PSUBFIFOs */
	FUNC5(priv, 0x000204, 0xffffffff);
	priv->spoon_nr = FUNC0(FUNC4(priv, 0x000204));
	FUNC2(priv, "%d subfifo(s)\n", priv->spoon_nr);

	/* PSUBFIFO[n] */
	for (i = 0; i < priv->spoon_nr; i++) {
		FUNC3(priv, 0x04013c + (i * 0x2000), 0x10000100, 0x00000000);
		FUNC5(priv, 0x040108 + (i * 0x2000), 0xffffffff); /* INTR */
		FUNC5(priv, 0x04010c + (i * 0x2000), 0xfffffeff); /* INTREN */
	}

	FUNC5(priv, 0x002254, 0x10000000 | priv->user.bar.offset >> 12);

	FUNC5(priv, 0x002a00, 0xffffffff);
	FUNC5(priv, 0x002100, 0xffffffff);
	FUNC5(priv, 0x002140, 0x3fffffff);
	return 0;
}