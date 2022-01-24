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
struct nvc0_clock_priv {int dummy; } ;
struct nvbios_pll {int type; int /*<<< orphan*/  reg; } ;
struct nouveau_clock {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PLL_VPLL0 131 
#define  PLL_VPLL1 130 
#define  PLL_VPLL2 129 
#define  PLL_VPLL3 128 
 struct nouveau_bios* FUNC0 (struct nvc0_clock_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_clock_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_clock_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_clock_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct nouveau_clock*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int FUNC5 (struct nouveau_bios*,int /*<<< orphan*/ ,struct nvbios_pll*) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_clock *clk, u32 type, u32 freq)
{
	struct nvc0_clock_priv *priv = (void *)clk;
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
	case PLL_VPLL2:
	case PLL_VPLL3:
		FUNC1(priv, info.reg + 0x0c, 0x00000000, 0x00000100);
		FUNC3(priv, info.reg + 0x04, (P << 16) | (N << 8) | M);
		FUNC3(priv, info.reg + 0x10, fN << 16);
		break;
	default:
		FUNC2(priv, "0x%08x/%dKhz unimplemented\n", type, freq);
		ret = -EINVAL;
		break;
	}

	return ret;
}