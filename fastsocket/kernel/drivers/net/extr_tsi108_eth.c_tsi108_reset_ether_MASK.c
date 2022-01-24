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
struct tsi108_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSI108_EC_PORTCTRL ; 
 int TSI108_EC_PORTCTRL_STATRST ; 
 int /*<<< orphan*/  TSI108_EC_RXCFG ; 
 int TSI108_EC_RXCFG_RST ; 
 int /*<<< orphan*/  TSI108_EC_TXCFG ; 
 int TSI108_EC_TXCFG_RST ; 
 int /*<<< orphan*/  TSI108_MAC_CFG1 ; 
 int TSI108_MAC_CFG1_SOFTRST ; 
 int /*<<< orphan*/  TSI108_MAC_MII_MGMT_CFG ; 
 int TSI108_MAC_MII_MGMT_CLK ; 
 int TSI108_MAC_MII_MGMT_RST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tsi108_prv_data * data)
{
	FUNC1(TSI108_MAC_CFG1, TSI108_MAC_CFG1_SOFTRST);
	FUNC2(100);
	FUNC1(TSI108_MAC_CFG1, 0);

	FUNC1(TSI108_EC_PORTCTRL, TSI108_EC_PORTCTRL_STATRST);
	FUNC2(100);
	FUNC1(TSI108_EC_PORTCTRL,
			     FUNC0(TSI108_EC_PORTCTRL) &
			     ~TSI108_EC_PORTCTRL_STATRST);

	FUNC1(TSI108_EC_TXCFG, TSI108_EC_TXCFG_RST);
	FUNC2(100);
	FUNC1(TSI108_EC_TXCFG,
			     FUNC0(TSI108_EC_TXCFG) &
			     ~TSI108_EC_TXCFG_RST);

	FUNC1(TSI108_EC_RXCFG, TSI108_EC_RXCFG_RST);
	FUNC2(100);
	FUNC1(TSI108_EC_RXCFG,
			     FUNC0(TSI108_EC_RXCFG) &
			     ~TSI108_EC_RXCFG_RST);

	FUNC1(TSI108_MAC_MII_MGMT_CFG,
			     FUNC0(TSI108_MAC_MII_MGMT_CFG) |
			     TSI108_MAC_MII_MGMT_RST);
	FUNC2(100);
	FUNC1(TSI108_MAC_MII_MGMT_CFG,
			     (FUNC0(TSI108_MAC_MII_MGMT_CFG) &
			     ~(TSI108_MAC_MII_MGMT_RST |
			       TSI108_MAC_MII_MGMT_CLK)) | 0x07);
}