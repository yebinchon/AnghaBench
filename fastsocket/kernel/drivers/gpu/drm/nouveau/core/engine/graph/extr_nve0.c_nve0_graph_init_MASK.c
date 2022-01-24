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
struct nvc0_graph_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,int,int) ; 
 int FUNC2 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvc0_graph_priv*) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *object)
{
	struct nvc0_graph_priv *priv = (void *)object;
	int ret;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	FUNC5(priv);
	FUNC6(priv);
	FUNC3(priv);

	FUNC1(priv, 0x400500, 0x00010001);
	FUNC1(priv, 0x400100, 0xffffffff);
	FUNC1(priv, 0x40013c, 0xffffffff);

	FUNC8(priv);
	FUNC4(priv);
	FUNC7(priv);

	FUNC1(priv, 0x400108, 0xffffffff);
	FUNC1(priv, 0x400138, 0xffffffff);
	FUNC1(priv, 0x400118, 0xffffffff);
	FUNC1(priv, 0x400130, 0xffffffff);
	FUNC1(priv, 0x40011c, 0xffffffff);
	FUNC1(priv, 0x400134, 0xffffffff);
	FUNC1(priv, 0x400054, 0x34ce3464);

	ret = FUNC2(priv);
	if (ret)
		return ret;

	return 0;
}