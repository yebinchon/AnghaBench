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
struct bcm_enet_priv {scalar_t__ use_external_mii; } ;

/* Variables and functions */
 int ENET_CTL_EPHYSEL_MASK ; 
 int /*<<< orphan*/  ENET_CTL_REG ; 
 int ENET_CTL_SRESET_MASK ; 
 int ENET_MIBCTL_RDCLEAR_MASK ; 
 int /*<<< orphan*/  ENET_MIBCTL_REG ; 
 int ENET_MIISC_MDCFREQDIV_SHIFT ; 
 int ENET_MIISC_PREAMBLEEN_MASK ; 
 int /*<<< orphan*/  ENET_MIISC_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_enet_priv*) ; 
 int FUNC1 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct bcm_enet_priv *priv)
{
	u32 val;
	int limit;

	/* make sure mac is disabled */
	FUNC0(priv);

	/* soft reset mac */
	val = ENET_CTL_SRESET_MASK;
	FUNC2(priv, val, ENET_CTL_REG);
	FUNC4();

	limit = 1000;
	do {
		val = FUNC1(priv, ENET_CTL_REG);
		if (!(val & ENET_CTL_SRESET_MASK))
			break;
		FUNC3(1);
	} while (limit--);

	/* select correct mii interface */
	val = FUNC1(priv, ENET_CTL_REG);
	if (priv->use_external_mii)
		val |= ENET_CTL_EPHYSEL_MASK;
	else
		val &= ~ENET_CTL_EPHYSEL_MASK;
	FUNC2(priv, val, ENET_CTL_REG);

	/* turn on mdc clock */
	FUNC2(priv, (0x1f << ENET_MIISC_MDCFREQDIV_SHIFT) |
		    ENET_MIISC_PREAMBLEEN_MASK, ENET_MIISC_REG);

	/* set mib counters to self-clear when read */
	val = FUNC1(priv, ENET_MIBCTL_REG);
	val |= ENET_MIBCTL_RDCLEAR_MASK;
	FUNC2(priv, val, ENET_MIBCTL_REG);
}