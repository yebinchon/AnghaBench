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
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int RXFIFO_PRTY_ERR ; 
 int TXFIFO_PRTY_ERR ; 
 int /*<<< orphan*/  XGMAC_PORT_INT_CAUSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adap, int port)
{
	u32 v = FUNC3(adap, FUNC0(port, XGMAC_PORT_INT_CAUSE));

	v &= TXFIFO_PRTY_ERR | RXFIFO_PRTY_ERR;
	if (!v)
		return;

	if (v & TXFIFO_PRTY_ERR)
		FUNC1(adap->pdev_dev, "XGMAC %d Tx FIFO parity error\n",
			  port);
	if (v & RXFIFO_PRTY_ERR)
		FUNC1(adap->pdev_dev, "XGMAC %d Rx FIFO parity error\n",
			  port);
	FUNC4(adap, FUNC0(port, XGMAC_PORT_INT_CAUSE), v);
	FUNC2(adap);
}