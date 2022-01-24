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
struct nv50_mpeg_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_mpeg_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_mpeg_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_mpeg_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_mpeg_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_mpeg_priv*,int,int) ; 

int
FUNC6(struct nouveau_object *object)
{
	struct nv50_mpeg_priv *priv = (void *)object;
	int ret;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	FUNC5(priv, 0x00b32c, 0x00000000);
	FUNC5(priv, 0x00b314, 0x00000100);
	FUNC5(priv, 0x00b0e0, 0x0000001a);

	FUNC5(priv, 0x00b220, 0x00000044);
	FUNC5(priv, 0x00b300, 0x00801ec1);
	FUNC5(priv, 0x00b390, 0x00000000);
	FUNC5(priv, 0x00b394, 0x00000000);
	FUNC5(priv, 0x00b398, 0x00000000);
	FUNC2(priv, 0x00b32c, 0x00000001, 0x00000001);

	FUNC5(priv, 0x00b100, 0xffffffff);
	FUNC5(priv, 0x00b140, 0xffffffff);

	if (!FUNC4(priv, 0x00b200, 0x00000001, 0x00000000)) {
		FUNC1(priv, "timeout 0x%08x\n", FUNC3(priv, 0x00b200));
		return -EBUSY;
	}

	return 0;
}