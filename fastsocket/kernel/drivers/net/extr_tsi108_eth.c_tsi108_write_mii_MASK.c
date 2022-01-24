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
typedef  int u16 ;
struct tsi108_prv_data {int phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSI108_MAC_MII_ADDR ; 
 int TSI108_MAC_MII_ADDR_PHY ; 
 int TSI108_MAC_MII_ADDR_REG ; 
 int /*<<< orphan*/  TSI108_MAC_MII_DATAOUT ; 
 int /*<<< orphan*/  TSI108_MAC_MII_IND ; 
 int TSI108_MAC_MII_IND_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tsi108_prv_data *data,
				int reg, u16 val)
{
	unsigned i = 100;
	FUNC1(TSI108_MAC_MII_ADDR,
				(data->phy << TSI108_MAC_MII_ADDR_PHY) |
				(reg << TSI108_MAC_MII_ADDR_REG));
	FUNC1(TSI108_MAC_MII_DATAOUT, val);
	while (i--) {
		if(!(FUNC0(TSI108_MAC_MII_IND) &
			TSI108_MAC_MII_IND_BUSY))
			break;
		FUNC2(10);
	}
}