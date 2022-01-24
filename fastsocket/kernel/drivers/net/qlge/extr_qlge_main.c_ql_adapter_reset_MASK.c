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
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MB_SET_MPI_TFK_RESUME ; 
 int /*<<< orphan*/  MB_SET_MPI_TFK_STOP ; 
 int /*<<< orphan*/  QL_ASIC_RECOVERY ; 
 int /*<<< orphan*/  RST_FO ; 
 int RST_FO_FR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  ifup ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ql_adapter *qdev)
{
	u32 value;
	int status = 0;
	unsigned long end_jiffies;

	/* Clear all the entries in the routing table. */
	status = FUNC4(qdev);
	if (status) {
		FUNC3(qdev, ifup, qdev->ndev, "Failed to clear routing bits.\n");
		return status;
	}

	end_jiffies = jiffies +
		FUNC2((unsigned long)1, FUNC11(30));

	/* Check if bit is set then skip the mailbox command and
	 * clear the bit, else we are in normal reset process.
	 */
	if (!FUNC9(QL_ASIC_RECOVERY, &qdev->flags)) {
		/* Stop management traffic. */
		FUNC5(qdev, MB_SET_MPI_TFK_STOP);

		/* Wait for the NIC and MGMNT FIFOs to empty. */
		FUNC7(qdev);
	} else
		FUNC0(QL_ASIC_RECOVERY, &qdev->flags);

	FUNC8(qdev, RST_FO, (RST_FO_FR << 16) | RST_FO_FR);

	do {
		value = FUNC6(qdev, RST_FO);
		if ((value & RST_FO_FR) == 0)
			break;
		FUNC1();
	} while (FUNC10(jiffies, end_jiffies));

	if (value & RST_FO_FR) {
		FUNC3(qdev, ifdown, qdev->ndev,
			  "ETIMEDOUT!!! errored out of resetting the chip!\n");
		status = -ETIMEDOUT;
	}

	/* Resume management traffic. */
	FUNC5(qdev, MB_SET_MPI_TFK_RESUME);
	return status;
}