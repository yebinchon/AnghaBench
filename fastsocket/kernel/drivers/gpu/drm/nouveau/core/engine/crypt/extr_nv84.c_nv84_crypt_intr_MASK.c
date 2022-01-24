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
typedef  int u64 ;
typedef  int u32 ;
struct nv84_crypt_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC2 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*) ; 
 struct nouveau_fifo* FUNC4 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  nv84_crypt_intr_mask ; 
 struct nouveau_engine* FUNC5 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv84_crypt_priv*,char*,char*) ; 
 int FUNC7 (struct nv84_crypt_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv84_crypt_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct nouveau_fifo*,struct nouveau_object*) ; 

__attribute__((used)) static void
FUNC11(struct nouveau_subdev *subdev)
{
	struct nouveau_fifo *pfifo = FUNC4(subdev);
	struct nouveau_engine *engine = FUNC5(subdev);
	struct nouveau_object *engctx;
	struct nv84_crypt_priv *priv = (void *)subdev;
	u32 stat = FUNC7(priv, 0x102130);
	u32 mthd = FUNC7(priv, 0x102190);
	u32 data = FUNC7(priv, 0x102194);
	u32 inst = FUNC7(priv, 0x102188) & 0x7fffffff;
	int chid;

	engctx = FUNC2(engine, inst);
	chid   = pfifo->chid(pfifo, engctx);

	if (stat) {
		FUNC6(priv, "%s", "");
		FUNC0(nv84_crypt_intr_mask, stat);
		FUNC9(" ch %d [0x%010llx %s] mthd 0x%04x data 0x%08x\n",
		       chid, (u64)inst << 12, FUNC1(engctx),
		       mthd, data);
	}

	FUNC8(priv, 0x102130, stat);
	FUNC8(priv, 0x10200c, 0x10);

	FUNC3(engctx);
}