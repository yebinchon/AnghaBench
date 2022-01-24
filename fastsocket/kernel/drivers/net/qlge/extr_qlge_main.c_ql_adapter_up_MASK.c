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
struct ql_adapter {int port_init; int port_link_up; int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  QL_ALLMULTI ; 
 int /*<<< orphan*/  QL_PROMISCUOUS ; 
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ql_adapter*) ; 
 int FUNC9 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ql_adapter *qdev)
{
	int err = 0;

	err = FUNC3(qdev);
	if (err) {
		FUNC1(qdev, ifup, qdev->ndev, "Unable to initialize adapter.\n");
		goto err_init;
	}
	FUNC12(QL_ADAPTER_UP, &qdev->flags);
	FUNC5(qdev);
	/* If the port is initialized and the
	 * link is up the turn on the carrier.
	 */
	if ((FUNC9(qdev, STS) & qdev->port_init) &&
			(FUNC9(qdev, STS) & qdev->port_link_up))
		FUNC8(qdev);
	/* Restore rx mode. */
	FUNC0(QL_ALLMULTI, &qdev->flags);
	FUNC0(QL_PROMISCUOUS, &qdev->flags);
	FUNC11(qdev->ndev);

	/* Restore vlan setting. */
	FUNC10(qdev);

	FUNC7(qdev);
	FUNC6(qdev);
	FUNC2(qdev->ndev);

	return 0;
err_init:
	FUNC4(qdev);
	return err;
}