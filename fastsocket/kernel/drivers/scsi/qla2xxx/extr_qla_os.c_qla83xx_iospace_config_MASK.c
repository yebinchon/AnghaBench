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
typedef  int uint16_t ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; int msix_count; int /*<<< orphan*/  pdev; void* msixbase; void* mqiobase; void* iobase; int /*<<< orphan*/  bars; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 scalar_t__ MIN_IOBASE_LEN ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int /*<<< orphan*/  QLA_83XX_PCI_MSIX_CONTROL ; 
 int QLA_MQ_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int ql2xmaxqueues ; 
 scalar_t__ ql2xmultique_tag ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  ql_dbg_multiq ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 

__attribute__((used)) static int
FUNC10(struct qla_hw_data *ha)
{
	uint16_t msix;
	int cpus;

	if (FUNC4(ha->pdev, ha->bars,
	    QLA2XXX_DRIVER_NAME)) {
		FUNC9(ql_log_fatal, ha->pdev, 0x0117,
		    "Failed to reserve PIO/MMIO regions (%s), aborting.\n",
		    FUNC2(ha->pdev));

		goto iospace_error_exit;
	}

	/* Use MMIO operations for all accesses. */
	if (!(FUNC5(ha->pdev, 0) & IORESOURCE_MEM)) {
		FUNC9(ql_log_warn, ha->pdev, 0x0118,
		    "Invalid pci I/O region size (%s).\n",
		    FUNC2(ha->pdev));
		goto iospace_error_exit;
	}
	if (FUNC6(ha->pdev, 0) < MIN_IOBASE_LEN) {
		FUNC9(ql_log_warn, ha->pdev, 0x0119,
		    "Invalid PCI mem region size (%s), aborting\n",
			FUNC2(ha->pdev));
		goto iospace_error_exit;
	}

	ha->iobase = FUNC0(FUNC7(ha->pdev, 0), MIN_IOBASE_LEN);
	if (!ha->iobase) {
		FUNC9(ql_log_fatal, ha->pdev, 0x011a,
		    "Cannot remap MMIO (%s), aborting.\n",
		    FUNC2(ha->pdev));
		goto iospace_error_exit;
	}

	/* 64bit PCI BAR - BAR2 will correspoond to region 4 */
	/* 83XX 26XX always use MQ type access for queues - mbar 2, a.k.a region 4 */
	ha->max_req_queues = ha->max_rsp_queues = 1;
	ha->mqiobase = FUNC0(FUNC7(ha->pdev, 4),
			FUNC6(ha->pdev, 4));

	if (!ha->mqiobase) {
		FUNC9(ql_log_fatal, ha->pdev, 0x011d,
		    "BAR2/region4 not enabled\n");
		goto mqiobase_exit;
	}

	ha->msixbase = FUNC0(FUNC7(ha->pdev, 2),
			FUNC6(ha->pdev, 2));
	if (ha->msixbase) {
		/* Read MSIX vector size of the board */
		FUNC3(ha->pdev, QLA_83XX_PCI_MSIX_CONTROL, &msix);
		ha->msix_count = msix;
		/* Max queues are bounded by available msix vectors */
		/* queue 0 uses two msix vectors */
		if (ql2xmultique_tag) {
			cpus = FUNC1();
			ha->max_rsp_queues = (ha->msix_count - 1 > cpus) ?
				(cpus + 1) : (ha->msix_count - 1);
			ha->max_req_queues = 2;
		} else if (ql2xmaxqueues > 1) {
			ha->max_req_queues = ql2xmaxqueues > QLA_MQ_SIZE ?
						QLA_MQ_SIZE : ql2xmaxqueues;
			FUNC8(ql_dbg_multiq, ha->pdev, 0xc00c,
			    "QoS mode set, max no of request queues:%d.\n",
			    ha->max_req_queues);
			FUNC8(ql_dbg_init, ha->pdev, 0x011b,
			    "QoS mode set, max no of request queues:%d.\n",
			    ha->max_req_queues);
		}
		FUNC9(ql_log_info, ha->pdev, 0x011c,
		    "MSI-X vector count: %d.\n", msix);
	} else
		FUNC9(ql_log_info, ha->pdev, 0x011e,
		    "BAR 1 not enabled.\n");

mqiobase_exit:
	ha->msix_count = ha->max_rsp_queues + 1;
	FUNC8(ql_dbg_init, ha->pdev, 0x011f,
	    "MSIX Count:%d.\n", ha->msix_count);
	return (0);

iospace_error_exit:
	return (-ENOMEM);
}