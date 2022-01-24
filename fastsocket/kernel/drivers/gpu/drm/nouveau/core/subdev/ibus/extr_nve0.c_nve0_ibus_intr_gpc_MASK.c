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
struct nve0_ibus_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nve0_ibus_priv*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nve0_ibus_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_ibus_priv*,int) ; 

__attribute__((used)) static void
FUNC3(struct nve0_ibus_priv *priv, int i)
{
	u32 addr = FUNC2(priv, 0x128120 + (i * 0x0800));
	u32 data = FUNC2(priv, 0x128124 + (i * 0x0800));
	u32 stat = FUNC2(priv, 0x128128 + (i * 0x0800));
	FUNC0(priv, "GPC%d: 0x%06x 0x%08x (0x%08x)\n", i, addr, data, stat);
	FUNC1(priv, 0x128128 + (i * 0x0800), 0x00000200, 0x00000000);
}