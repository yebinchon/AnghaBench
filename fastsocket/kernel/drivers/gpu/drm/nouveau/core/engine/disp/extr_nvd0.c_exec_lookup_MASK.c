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
typedef  int u16 ;
struct nvbios_outp {int dummy; } ;
struct nv50_disp_priv {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct dcb_output {TYPE_1__ sorconf; } ;

/* Variables and functions */
 int DCB_OUTPUT_ANALOG ; 
 int DCB_OUTPUT_DP ; 
 int DCB_OUTPUT_LVDS ; 
 int DCB_OUTPUT_TMDS ; 
 int FUNC0 (struct nouveau_bios*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct dcb_output*) ; 
 struct nouveau_bios* FUNC1 (struct nv50_disp_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp_priv*,char*,int) ; 
 int FUNC3 (struct nouveau_bios*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_outp*) ; 

__attribute__((used)) static u16
FUNC4(struct nv50_disp_priv *priv, int head, int outp, u32 ctrl,
	    struct dcb_output *dcb, u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
	    struct nvbios_outp *info)
{
	struct nouveau_bios *bios = FUNC1(priv);
	u16 mask, type, data;

	if (outp < 4) {
		type = DCB_OUTPUT_ANALOG;
		mask = 0;
	} else {
		outp -= 4;
		switch (ctrl & 0x00000f00) {
		case 0x00000000: type = DCB_OUTPUT_LVDS; mask = 1; break;
		case 0x00000100: type = DCB_OUTPUT_TMDS; mask = 1; break;
		case 0x00000200: type = DCB_OUTPUT_TMDS; mask = 2; break;
		case 0x00000500: type = DCB_OUTPUT_TMDS; mask = 3; break;
		case 0x00000800: type = DCB_OUTPUT_DP; mask = 1; break;
		case 0x00000900: type = DCB_OUTPUT_DP; mask = 2; break;
		default:
			FUNC2(priv, "unknown SOR mc 0x%08x\n", ctrl);
			return 0x0000;
		}
		dcb->sorconf.link = mask;
	}

	mask  = 0x00c0 & (mask << 6);
	mask |= 0x0001 << outp;
	mask |= 0x0100 << head;

	data = FUNC0(bios, type, mask, ver, hdr, dcb);
	if (!data)
		return 0x0000;

	return FUNC3(bios, type, mask, ver, hdr, cnt, len, info);
}