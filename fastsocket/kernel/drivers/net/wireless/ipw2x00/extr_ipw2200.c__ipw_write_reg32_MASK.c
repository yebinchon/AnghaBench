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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPW_INDIRECT_ADDR ; 
 int /*<<< orphan*/  IPW_INDIRECT_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ipw_priv *priv, u32 reg, u32 value)
{
	FUNC0(" %p : reg = 0x%8X : value = 0x%8X\n", priv, reg, value);
	FUNC1(priv, IPW_INDIRECT_ADDR, reg);
	FUNC1(priv, IPW_INDIRECT_DATA, value);
}