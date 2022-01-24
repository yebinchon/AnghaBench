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
struct nv50_disp_priv {int dummy; } ;
struct nouveau_disp {int dummy; } ;
struct dcb_output {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nv50_disp_priv*,int) ; 
 int FUNC1 (struct dcb_output*) ; 
 int FUNC2 (struct dcb_output*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int const,int,int) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_disp *disp, struct dcb_output *outp,
		    int head, int link_nr, int link_bw, bool enh_frame)
{
	struct nv50_disp_priv *priv = (void *)disp;
	const u32 soff = FUNC2(outp);
	const u32 loff = FUNC1(outp);
	u32 dpctrl = 0x00000000;
	u32 clksor = 0x00000000;
	u32 lane = 0;
	int i;

	dpctrl |= ((1 << link_nr) - 1) << 16;
	if (enh_frame)
		dpctrl |= 0x00004000;
	if (link_bw > 0x06)
		clksor |= 0x00040000;

	for (i = 0; i < link_nr; i++)
		lane |= 1 << (FUNC0(priv, i) >> 3);

	FUNC3(priv, 0x614300 + soff, 0x000c0000, clksor);
	FUNC3(priv, 0x61c10c + loff, 0x001f4000, dpctrl);
	FUNC3(priv, 0x61c130 + loff, 0x0000000f, lane);
	return 0;
}