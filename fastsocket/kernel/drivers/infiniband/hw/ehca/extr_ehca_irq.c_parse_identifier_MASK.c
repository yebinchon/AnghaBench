#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct ehca_shca {TYPE_1__ ib_device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQE_EE_IDENTIFIER ; 
 int /*<<< orphan*/  IB_EVENT_COMM_EST ; 
 int /*<<< orphan*/  IB_EVENT_PATH_MIG ; 
 int /*<<< orphan*/  IB_EVENT_QP_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_SQ_DRAINED ; 
 int /*<<< orphan*/  IB_EVENT_SRQ_LIMIT_REACHED ; 
 int /*<<< orphan*/  FUNC1 (struct ehca_shca*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehca_shca*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ehca_shca *shca, u64 eqe)
{
	u8 identifier = FUNC0(EQE_EE_IDENTIFIER, eqe);

	switch (identifier) {
	case 0x02: /* path migrated */
		FUNC4(shca, eqe, IB_EVENT_PATH_MIG, 0);
		break;
	case 0x03: /* communication established */
		FUNC4(shca, eqe, IB_EVENT_COMM_EST, 0);
		break;
	case 0x04: /* send queue drained */
		FUNC4(shca, eqe, IB_EVENT_SQ_DRAINED, 0);
		break;
	case 0x05: /* QP error */
	case 0x06: /* QP error */
		FUNC4(shca, eqe, IB_EVENT_QP_FATAL, 1);
		break;
	case 0x07: /* CQ error */
	case 0x08: /* CQ error */
		FUNC1(shca, eqe);
		break;
	case 0x09: /* MRMWPTE error */
		FUNC2(&shca->ib_device, "MRMWPTE error.");
		break;
	case 0x0A: /* port event */
		FUNC2(&shca->ib_device, "Port event.");
		break;
	case 0x0B: /* MR access error */
		FUNC2(&shca->ib_device, "MR access error.");
		break;
	case 0x0C: /* EQ error */
		FUNC2(&shca->ib_device, "EQ error.");
		break;
	case 0x0D: /* P/Q_Key mismatch */
		FUNC2(&shca->ib_device, "P/Q_Key mismatch.");
		break;
	case 0x10: /* sampling complete */
		FUNC2(&shca->ib_device, "Sampling complete.");
		break;
	case 0x11: /* unaffiliated access error */
		FUNC2(&shca->ib_device, "Unaffiliated access error.");
		break;
	case 0x12: /* path migrating */
		FUNC2(&shca->ib_device, "Path migrating.");
		break;
	case 0x13: /* interface trace stopped */
		FUNC2(&shca->ib_device, "Interface trace stopped.");
		break;
	case 0x14: /* first error capture info available */
		FUNC3(&shca->ib_device, "First error capture available");
		break;
	case 0x15: /* SRQ limit reached */
		FUNC4(shca, eqe, IB_EVENT_SRQ_LIMIT_REACHED, 0);
		break;
	default:
		FUNC2(&shca->ib_device, "Unknown identifier: %x on %s.",
			 identifier, shca->ib_device.name);
		break;
	}

	return;
}