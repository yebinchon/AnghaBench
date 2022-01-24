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
typedef  int u8 ;
typedef  int u32 ;
struct nv50_fb_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_enum {int name; int value; scalar_t__ data; scalar_t__ data2; } ;
struct nouveau_engine {int dummy; } ;
struct nouveau_device {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engine*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*) ; 
 struct nouveau_engine* FUNC3 (struct nouveau_subdev*,scalar_t__) ; 
 struct nouveau_enum* FUNC4 (scalar_t__,int) ; 
 struct nouveau_device* FUNC5 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv50_fb_priv*,char*,char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nv50_fb_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv50_fb_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ vm_client ; 
 scalar_t__ vm_engine ; 
 scalar_t__ vm_fault ; 

__attribute__((used)) static void
FUNC10(struct nouveau_subdev *subdev)
{
	struct nouveau_device *device = FUNC5(subdev);
	struct nouveau_engine *engine;
	struct nv50_fb_priv *priv = (void *)subdev;
	const struct nouveau_enum *en, *cl;
	struct nouveau_object *engctx = NULL;
	u32 trap[6], idx, chan;
	u8 st0, st1, st2, st3;
	int i;

	idx = FUNC7(priv, 0x100c90);
	if (!(idx & 0x80000000))
		return;
	idx &= 0x00ffffff;

	for (i = 0; i < 6; i++) {
		FUNC8(priv, 0x100c90, idx | i << 24);
		trap[i] = FUNC7(priv, 0x100c94);
	}
	FUNC8(priv, 0x100c90, idx | 0x80000000);

	/* decode status bits into something more useful */
	if (device->chipset  < 0xa3 ||
	    device->chipset == 0xaa || device->chipset == 0xac) {
		st0 = (trap[0] & 0x0000000f) >> 0;
		st1 = (trap[0] & 0x000000f0) >> 4;
		st2 = (trap[0] & 0x00000f00) >> 8;
		st3 = (trap[0] & 0x0000f000) >> 12;
	} else {
		st0 = (trap[0] & 0x000000ff) >> 0;
		st1 = (trap[0] & 0x0000ff00) >> 8;
		st2 = (trap[0] & 0x00ff0000) >> 16;
		st3 = (trap[0] & 0xff000000) >> 24;
	}
	chan = (trap[2] << 16) | trap[1];

	en = FUNC4(vm_engine, st0);

	if (en && en->data2) {
		const struct nouveau_enum *orig_en = en;
		while (en->name && en->value == st0 && en->data2) {
			engine = FUNC3(subdev, en->data2);
			if (engine) {
				engctx = FUNC1(engine, chan);
				if (engctx)
					break;
			}
			en++;
		}
		if (!engctx)
			en = orig_en;
	}

	FUNC6(priv, "trapped %s at 0x%02x%04x%04x on channel 0x%08x [%s] ",
		 (trap[5] & 0x00000100) ? "read" : "write",
		 trap[5] & 0xff, trap[4] & 0xffff, trap[3] & 0xffff, chan,
		 FUNC0(engctx));

	FUNC2(engctx);

	if (en)
		FUNC9("%s/", en->name);
	else
		FUNC9("%02x/", st0);

	cl = FUNC4(vm_client, st2);
	if (cl)
		FUNC9("%s/", cl->name);
	else
		FUNC9("%02x/", st2);

	if      (cl && cl->data) cl = FUNC4(cl->data, st3);
	else if (en && en->data) cl = FUNC4(en->data, st3);
	else                     cl = NULL;
	if (cl)
		FUNC9("%s", cl->name);
	else
		FUNC9("%02x", st3);

	FUNC9(" reason: ");
	en = FUNC4(vm_fault, st1);
	if (en)
		FUNC9("%s\n", en->name);
	else
		FUNC9("0x%08x\n", st1);
}