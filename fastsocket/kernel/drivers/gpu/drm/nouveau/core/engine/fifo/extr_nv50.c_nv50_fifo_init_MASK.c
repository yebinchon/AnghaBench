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
struct nv50_fifo_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_fifo_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_fifo_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_fifo_priv*,int,int) ; 

int
FUNC4(struct nouveau_object *object)
{
	struct nv50_fifo_priv *priv = (void *)object;
	int ret, i;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	FUNC2(priv, 0x000200, 0x00000100, 0x00000000);
	FUNC2(priv, 0x000200, 0x00000100, 0x00000100);
	FUNC3(priv, 0x00250c, 0x6f3cfc34);
	FUNC3(priv, 0x002044, 0x01003fff);

	FUNC3(priv, 0x002100, 0xffffffff);
	FUNC3(priv, 0x002140, 0xbfffffff);

	for (i = 0; i < 128; i++)
		FUNC3(priv, 0x002600 + (i * 4), 0x00000000);
	FUNC1(priv);

	FUNC3(priv, 0x003200, 0x00000001);
	FUNC3(priv, 0x003250, 0x00000001);
	FUNC3(priv, 0x002500, 0x00000001);
	return 0;
}