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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {struct ethoc* priv; } ;
struct ethoc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long ETHOC_MII_TIMEOUT ; 
 int /*<<< orphan*/  MIIADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MIICOMMAND ; 
 int /*<<< orphan*/  MIICOMMAND_WRITE ; 
 int /*<<< orphan*/  MIISTATUS ; 
 int MIISTATUS_BUSY ; 
 int /*<<< orphan*/  MIITX_DATA ; 
 int FUNC1 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phy, int reg, u16 val)
{
	unsigned long timeout = jiffies + ETHOC_MII_TIMEOUT;
	struct ethoc *priv = bus->priv;

	FUNC2(priv, MIIADDRESS, FUNC0(phy, reg));
	FUNC2(priv, MIITX_DATA, val);
	FUNC2(priv, MIICOMMAND, MIICOMMAND_WRITE);

	while (FUNC4(jiffies, timeout)) {
		u32 stat = FUNC1(priv, MIISTATUS);
		if (!(stat & MIISTATUS_BUSY))
			return 0;

		FUNC3();
	}

	return -EBUSY;
}