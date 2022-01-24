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
typedef  int u8 ;
struct nvbios_outp {int /*<<< orphan*/ * script; } ;
struct nvbios_init {int crtc; int execute; struct dcb_output* outp; int /*<<< orphan*/  offset; struct nouveau_bios* bios; int /*<<< orphan*/  subdev; } ;
struct TYPE_2__ {int post; } ;
struct nv50_devinit_priv {TYPE_1__ base; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {int /*<<< orphan*/  hashm; int /*<<< orphan*/  hasht; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_bios*,int,int*,int*,struct dcb_output*) ; 
 struct nouveau_bios* FUNC1 (struct nouveau_object*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_devinit_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_devinit_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_devinit_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvbios_init*) ; 
 scalar_t__ FUNC7 (struct nouveau_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*,int*,struct nvbios_outp*) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_object *object)
{
	struct nouveau_bios *bios = FUNC1(object);
	struct nv50_devinit_priv *priv = (void *)object;
	struct nvbios_outp info;
	struct dcb_output outp;
	u8  ver = 0xff, hdr, cnt, len;
	int ret, i = 0;

	if (!priv->base.post) {
		if (!FUNC4(priv, 0, 0x00) &&
		    !FUNC4(priv, 0, 0x1a)) {
			FUNC3(priv, "adaptor not initialised\n");
			priv->base.post = true;
		}
	}

	ret = FUNC2(&priv->base);
	if (ret)
		return ret;

	/* if we ran the init tables, we have to execute the first script
	 * pointer of each dcb entry's display encoder table in order
	 * to properly initialise each encoder.
	 */
	while (priv->base.post && FUNC0(bios, i, &ver, &hdr, &outp)) {
		if (FUNC7(bios, outp.hasht, outp.hashm,
				     &ver, &hdr, &cnt, &len, &info)) {
			struct nvbios_init init = {
				.subdev = FUNC5(priv),
				.bios = bios,
				.offset = info.script[0],
				.outp = &outp,
				.crtc = -1,
				.execute = 1,
			};

			FUNC6(&init);
		}
		i++;
	}

	return 0;
}