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
typedef  int /*<<< orphan*/  u64 ;
struct niu {int port; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENET_SERDES_1_PLL_CFG ; 
 int /*<<< orphan*/  ENET_SERDES_PLL_FBDIV2 ; 
 int /*<<< orphan*/  ENET_SERDES_PLL_HRATE0 ; 
 int /*<<< orphan*/  ENET_SERDES_PLL_HRATE1 ; 
 int /*<<< orphan*/  ENET_SERDES_PLL_HRATE2 ; 
 int /*<<< orphan*/  ENET_SERDES_PLL_HRATE3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct niu *np)
{
	u64 val;

	val = FUNC0(ENET_SERDES_1_PLL_CFG);
	val &= ~ENET_SERDES_PLL_FBDIV2;
	switch (np->port) {
	case 0:
		val |= ENET_SERDES_PLL_HRATE0;
		break;
	case 1:
		val |= ENET_SERDES_PLL_HRATE1;
		break;
	case 2:
		val |= ENET_SERDES_PLL_HRATE2;
		break;
	case 3:
		val |= ENET_SERDES_PLL_HRATE3;
		break;
	default:
		return -EINVAL;
	}
	FUNC1(ENET_SERDES_1_PLL_CFG, val);

	return 0;
}