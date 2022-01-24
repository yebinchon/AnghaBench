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
struct nv31_mpeg_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*) ; 
 struct nouveau_fifo* FUNC3 (struct nouveau_subdev*) ; 
 struct nouveau_handle* FUNC4 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_engine* FUNC7 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv31_mpeg_priv*,char*,int,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nv31_mpeg_priv*,int,int,int) ; 
 int FUNC10 (struct nv31_mpeg_priv*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nv31_mpeg_priv*,int,int) ; 
 int FUNC12 (struct nouveau_fifo*,struct nouveau_object*) ; 

void
FUNC13(struct nouveau_subdev *subdev)
{
	struct nouveau_fifo *pfifo = FUNC3(subdev);
	struct nouveau_engine *engine = FUNC7(subdev);
	struct nouveau_object *engctx;
	struct nouveau_handle *handle;
	struct nv31_mpeg_priv *priv = (void *)subdev;
	u32 inst = FUNC10(priv, 0x00b318) & 0x000fffff;
	u32 stat = FUNC10(priv, 0x00b100);
	u32 type = FUNC10(priv, 0x00b230);
	u32 mthd = FUNC10(priv, 0x00b234);
	u32 data = FUNC10(priv, 0x00b238);
	u32 show = stat;
	int chid;

	engctx = FUNC1(engine, inst);
	chid   = pfifo->chid(pfifo, engctx);

	if (stat & 0x01000000) {
		/* happens on initial binding of the object */
		if (type == 0x00000020 && mthd == 0x0000) {
			FUNC9(priv, 0x00b308, 0x00000000, 0x00000000);
			show &= ~0x01000000;
		}

		if (type == 0x00000010) {
			handle = FUNC4(engctx, 0x3174);
			if (handle && !FUNC6(handle->object, mthd, data))
				show &= ~0x01000000;
			FUNC5(handle);
		}
	}

	FUNC11(priv, 0x00b100, stat);
	FUNC11(priv, 0x00b230, 0x00000001);

	if (show) {
		FUNC8(priv,
			 "ch %d [0x%08x %s] 0x%08x 0x%08x 0x%08x 0x%08x\n",
			 chid, inst << 4, FUNC0(engctx), stat,
			 type, mthd, data);
	}

	FUNC2(engctx);
}