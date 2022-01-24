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
struct nv98_crypt_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct nouveau_fifo* FUNC4 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  nv98_crypt_isr_error_name ; 
 struct nouveau_engine* FUNC5 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv98_crypt_priv*,char*,...) ; 
 int FUNC7 (struct nv98_crypt_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv98_crypt_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (struct nouveau_fifo*,struct nouveau_object*) ; 

__attribute__((used)) static void
FUNC11(struct nouveau_subdev *subdev)
{
	struct nouveau_fifo *pfifo = FUNC4(subdev);
	struct nouveau_engine *engine = FUNC5(subdev);
	struct nouveau_object *engctx;
	struct nv98_crypt_priv *priv = (void *)subdev;
	u32 disp = FUNC7(priv, 0x08701c);
	u32 stat = FUNC7(priv, 0x087008) & disp & ~(disp >> 16);
	u32 inst = FUNC7(priv, 0x087050) & 0x3fffffff;
	u32 ssta = FUNC7(priv, 0x087040) & 0x0000ffff;
	u32 addr = FUNC7(priv, 0x087040) >> 16;
	u32 mthd = (addr & 0x07ff) << 2;
	u32 subc = (addr & 0x3800) >> 11;
	u32 data = FUNC7(priv, 0x087044);
	int chid;

	engctx = FUNC1(engine, inst);
	chid   = pfifo->chid(pfifo, engctx);

	if (stat & 0x00000040) {
		FUNC6(priv, "DISPATCH_ERROR [");
		FUNC3(nv98_crypt_isr_error_name, ssta);
		FUNC9("] ch %d [0x%010llx %s] subc %d mthd 0x%04x data 0x%08x\n",
		       chid, (u64)inst << 12, FUNC0(engctx),
		       subc, mthd, data);
		FUNC8(priv, 0x087004, 0x00000040);
		stat &= ~0x00000040;
	}

	if (stat) {
		FUNC6(priv, "unhandled intr 0x%08x\n", stat);
		FUNC8(priv, 0x087004, stat);
	}

	FUNC2(engctx);
}