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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct nvbios_outp {int /*<<< orphan*/ * script; } ;
struct nvbios_init {int crtc; int execute; struct dcb_output* outp; int /*<<< orphan*/  offset; struct nouveau_bios* bios; int /*<<< orphan*/  subdev; } ;
struct nv50_disp_priv {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nv50_disp_priv*,int,int,int,struct dcb_output*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_outp*) ; 
 struct nouveau_bios* FUNC1 (struct nv50_disp_priv*) ; 
 TYPE_1__* FUNC2 (struct nv50_disp_priv*) ; 
 int FUNC3 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_disp_priv*) ; 
 scalar_t__ FUNC5 (struct nvbios_init*) ; 

__attribute__((used)) static bool
FUNC6(struct nv50_disp_priv *priv, int head, int id)
{
	struct nouveau_bios *bios = FUNC1(priv);
	struct nvbios_outp info;
	struct dcb_output dcb;
	u8  ver, hdr, cnt, len;
	u16 data;
	u32 ctrl = 0x00000000;
	int i;

	/* DAC */
	for (i = 0; !(ctrl & (1 << head)) && i < 3; i++)
		ctrl = FUNC3(priv, 0x610b5c + (i * 8));

	/* SOR */
	if (!(ctrl & (1 << head))) {
		if (FUNC2(priv)->chipset  < 0x90 ||
		    FUNC2(priv)->chipset == 0x92 ||
		    FUNC2(priv)->chipset == 0xa0) {
			for (i = 0; !(ctrl & (1 << head)) && i < 2; i++)
				ctrl = FUNC3(priv, 0x610b74 + (i * 8));
			i += 4;
		} else {
			for (i = 0; !(ctrl & (1 << head)) && i < 4; i++)
				ctrl = FUNC3(priv, 0x610798 + (i * 8));
			i += 4;
		}
	}

	/* PIOR */
	if (!(ctrl & (1 << head))) {
		for (i = 0; !(ctrl & (1 << head)) && i < 3; i++)
			ctrl = FUNC3(priv, 0x610b84 + (i * 8));
		i += 8;
	}

	if (!(ctrl & (1 << head)))
		return false;
	i--;

	data = FUNC0(priv, head, i, ctrl, &dcb, &ver, &hdr, &cnt, &len, &info);
	if (data) {
		struct nvbios_init init = {
			.subdev = FUNC4(priv),
			.bios = bios,
			.offset = info.script[id],
			.outp = &dcb,
			.crtc = head,
			.execute = 1,
		};

		return FUNC5(&init) == 0;
	}

	return false;
}