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
typedef  int /*<<< orphan*/  u32 ;
struct nvbios_pll {int type; scalar_t__ reg; } ;
struct nva3_clock_priv {int dummy; } ;
struct nouveau_clock {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PLL_VPLL0 129 
#define  PLL_VPLL1 128 
 struct nouveau_bios* FUNC0 (struct nva3_clock_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nva3_clock_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nva3_clock_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nva3_clock_priv*,scalar_t__,int) ; 
 int FUNC4 (struct nouveau_clock*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int FUNC5 (struct nouveau_bios*,int /*<<< orphan*/ ,struct nvbios_pll*) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_clock *clk, u32 type, u32 freq)
{
	struct nva3_clock_priv *priv = (void *)clk;
	struct nouveau_bios *bios = FUNC0(priv);
	struct nvbios_pll info;
	int N, fN, M, P;
	int ret;

	ret = FUNC5(bios, type, &info);
	if (ret)
		return ret;

	ret = FUNC4(clk, &info, freq, &N, &fN, &M, &P);
	if (ret < 0)
		return ret;

	switch (info.type) {
	case PLL_VPLL0:
	case PLL_VPLL1:
		FUNC3(priv, info.reg + 0, 0x50000610);
		FUNC1(priv, info.reg + 4, 0x003fffff,
					    (P << 16) | (M << 8) | N);
		FUNC3(priv, info.reg + 8, fN);
		break;
	default:
		FUNC2(priv, "0x%08x/%dKhz unimplemented\n", type, freq);
		ret = -EINVAL;
		break;
	}

	return ret;
}