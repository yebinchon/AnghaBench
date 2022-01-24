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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nvbios_dpout {int dummy; } ;
struct nvbios_dpcfg {int drv; int pre; int unk; } ;
struct nv50_disp_priv {int dummy; } ;
struct nouveau_disp {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {int /*<<< orphan*/  hashm; int /*<<< orphan*/  hasht; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct nouveau_bios* FUNC0 (struct nouveau_disp*) ; 
 int FUNC1 (struct nv50_disp_priv*,int) ; 
 int FUNC2 (struct dcb_output*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int const,int,int) ; 
 int FUNC4 (struct nouveau_bios*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_dpcfg*) ; 
 int FUNC5 (struct nouveau_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_dpout*) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_disp *disp, struct dcb_output *outp,
		    int head, int lane, int swing, int preem)
{
	struct nouveau_bios *bios = FUNC0(disp);
	struct nv50_disp_priv *priv = (void *)disp;
	const u32 loff = FUNC2(outp);
	u32 addr, shift = FUNC1(priv, lane);
	u8  ver, hdr, cnt, len;
	struct nvbios_dpout info;
	struct nvbios_dpcfg ocfg;

	addr = FUNC5(bios, outp->hasht, outp->hashm,
				 &ver, &hdr, &cnt, &len, &info);
	if (!addr)
		return -ENODEV;

	addr = FUNC4(bios, addr, 0, swing, preem,
				 &ver, &hdr, &cnt, &len, &ocfg);
	if (!addr)
		return -EINVAL;

	FUNC3(priv, 0x61c118 + loff, 0x000000ff << shift, ocfg.drv << shift);
	FUNC3(priv, 0x61c120 + loff, 0x000000ff << shift, ocfg.pre << shift);
	FUNC3(priv, 0x61c130 + loff, 0x0000ff00, ocfg.unk << 8);
	return 0;
}