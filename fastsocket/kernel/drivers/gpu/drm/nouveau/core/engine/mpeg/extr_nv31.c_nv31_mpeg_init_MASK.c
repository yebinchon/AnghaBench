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
struct nv31_mpeg_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int /*<<< orphan*/  engine; } ;
struct TYPE_2__ {int regions; } ;
struct nouveau_fb {TYPE_1__ tile; } ;
struct nouveau_engine {int /*<<< orphan*/  (* tile_prog ) (struct nouveau_engine*,int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 struct nouveau_fb* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nv31_mpeg_priv*) ; 
 struct nouveau_engine* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nv31_mpeg_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nv31_mpeg_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv31_mpeg_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nv31_mpeg_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv31_mpeg_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_engine*,int) ; 

int
FUNC10(struct nouveau_object *object)
{
	struct nouveau_engine *engine = FUNC3(object->engine);
	struct nv31_mpeg_priv *priv = (void *)engine;
	struct nouveau_fb *pfb = FUNC0(object);
	int ret, i;

	ret = FUNC1(&priv->base);
	if (ret)
		return ret;

	/* VPE init */
	FUNC8(priv, 0x00b0e0, 0x00000020); /* nvidia: rd 0x01, wr 0x20 */
	FUNC8(priv, 0x00b0e8, 0x00000020); /* nvidia: rd 0x01, wr 0x20 */

	for (i = 0; i < pfb->tile.regions; i++)
		engine->tile_prog(engine, i);

	/* PMPEG init */
	FUNC8(priv, 0x00b32c, 0x00000000);
	FUNC8(priv, 0x00b314, 0x00000100);
	FUNC8(priv, 0x00b220, FUNC2(priv) ? 0x00000044 : 0x00000031);
	FUNC8(priv, 0x00b300, 0x02001ec1);
	FUNC5(priv, 0x00b32c, 0x00000001, 0x00000001);

	FUNC8(priv, 0x00b100, 0xffffffff);
	FUNC8(priv, 0x00b140, 0xffffffff);

	if (!FUNC7(priv, 0x00b200, 0x00000001, 0x00000000)) {
		FUNC4(priv, "timeout 0x%08x\n", FUNC6(priv, 0x00b200));
		return -EBUSY;
	}

	return 0;
}