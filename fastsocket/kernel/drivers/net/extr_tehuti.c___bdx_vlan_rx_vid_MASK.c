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
typedef  int uint16_t ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct bdx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct bdx_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*,int,int) ; 
 struct bdx_priv* FUNC5 (struct net_device*) ; 
 int regVLAN_0 ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev, uint16_t vid, int enable)
{
	struct bdx_priv *priv = FUNC5(ndev);
	u32 reg, bit, val;

	ENTER;
	FUNC0("vid=%d value=%d\n", (int)vid, enable);
	if (FUNC6(vid >= 4096)) {
		FUNC1("tehuti: invalid VID: %u (> 4096)\n", vid);
		FUNC3();
	}
	reg = regVLAN_0 + (vid / 32) * 4;
	bit = 1 << vid % 32;
	val = FUNC2(priv, reg);
	FUNC0("reg=%x, val=%x, bit=%d\n", reg, val, bit);
	if (enable)
		val |= bit;
	else
		val &= ~bit;
	FUNC0("new val %x\n", val);
	FUNC4(priv, reg, val);
	FUNC3();
}