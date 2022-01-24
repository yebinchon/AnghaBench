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
struct ql_adapter {int port_init; int /*<<< orphan*/  xg_sem_mask; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_CFG ; 
 int GLOBAL_CFG_JUMBO ; 
 int GLOBAL_CFG_RESET ; 
 int GLOBAL_CFG_RX_STAT_EN ; 
 int GLOBAL_CFG_TX_STAT_EN ; 
 int /*<<< orphan*/  MAC_RX_PARAMS ; 
 int /*<<< orphan*/  MAC_TX_PARAMS ; 
 int MAC_TX_PARAMS_JUMBO ; 
 int /*<<< orphan*/  RX_CFG ; 
 int RX_CFG_EN ; 
 int RX_CFG_RESET ; 
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  TX_CFG ; 
 int TX_CFG_EN ; 
 int TX_CFG_RESET ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ql_adapter *qdev)
{
	int status = 0;
	u32 data;

	if (FUNC3(qdev, qdev->xg_sem_mask)) {
		/* Another function has the semaphore, so
		 * wait for the port init bit to come ready.
		 */
		FUNC1(qdev, link, qdev->ndev,
			   "Another function has the semaphore, so wait for the port init bit to come ready.\n");
		status = FUNC5(qdev, STS, qdev->port_init, 0);
		if (status) {
			FUNC0(qdev, link, qdev->ndev,
				   "Port initialize timed out.\n");
		}
		return status;
	}

	FUNC1(qdev, link, qdev->ndev, "Got xgmac semaphore!.\n");
	/* Set the core reset. */
	status = FUNC2(qdev, GLOBAL_CFG, &data);
	if (status)
		goto end;
	data |= GLOBAL_CFG_RESET;
	status = FUNC7(qdev, GLOBAL_CFG, data);
	if (status)
		goto end;

	/* Clear the core reset and turn on jumbo for receiver. */
	data &= ~GLOBAL_CFG_RESET;	/* Clear core reset. */
	data |= GLOBAL_CFG_JUMBO;	/* Turn on jumbo. */
	data |= GLOBAL_CFG_TX_STAT_EN;
	data |= GLOBAL_CFG_RX_STAT_EN;
	status = FUNC7(qdev, GLOBAL_CFG, data);
	if (status)
		goto end;

	/* Enable transmitter, and clear it's reset. */
	status = FUNC2(qdev, TX_CFG, &data);
	if (status)
		goto end;
	data &= ~TX_CFG_RESET;	/* Clear the TX MAC reset. */
	data |= TX_CFG_EN;	/* Enable the transmitter. */
	status = FUNC7(qdev, TX_CFG, data);
	if (status)
		goto end;

	/* Enable receiver and clear it's reset. */
	status = FUNC2(qdev, RX_CFG, &data);
	if (status)
		goto end;
	data &= ~RX_CFG_RESET;	/* Clear the RX MAC reset. */
	data |= RX_CFG_EN;	/* Enable the receiver. */
	status = FUNC7(qdev, RX_CFG, data);
	if (status)
		goto end;

	/* Turn on jumbo. */
	status =
	    FUNC7(qdev, MAC_TX_PARAMS, MAC_TX_PARAMS_JUMBO | (0x2580 << 16));
	if (status)
		goto end;
	status =
	    FUNC7(qdev, MAC_RX_PARAMS, 0x2580);
	if (status)
		goto end;

	/* Signal to the world that the port is enabled.        */
	FUNC6(qdev, STS, ((qdev->port_init << 16) | qdev->port_init));
end:
	FUNC4(qdev, qdev->xg_sem_mask);
	return status;
}