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
struct qla_hw_data {int bars; int max_req_queues; int max_rsp_queues; int mqiobase; int msix_count; int /*<<< orphan*/  pdev; void* iobase; scalar_t__ pio_address; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int ENOMEM ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ MIN_IOBASE_LEN ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int QLA_MQ_SIZE ; 
 int /*<<< orphan*/  QLA_PCI_MSIX_CONTROL ; 
 void* FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int ql2xmaxqueues ; 
 scalar_t__ ql2xmultique_tag ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  ql_dbg_multiq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 

__attribute__((used)) static int
FUNC12(struct qla_hw_data *ha)
{
	resource_size_t pio;
	uint16_t msix;
	int cpus;

	if (FUNC6(ha->pdev, ha->bars,
	    QLA2XXX_DRIVER_NAME)) {
		FUNC11(ql_log_fatal, ha->pdev, 0x0011,
		    "Failed to reserve PIO/MMIO regions (%s), aborting.\n",
		    FUNC4(ha->pdev));
		goto iospace_error_exit;
	}
	if (!(ha->bars & 1))
		goto skip_pio;

	/* We only need PIO for Flash operations on ISP2312 v2 chips. */
	pio = FUNC9(ha->pdev, 0);
	if (FUNC7(ha->pdev, 0) & IORESOURCE_IO) {
		if (FUNC8(ha->pdev, 0) < MIN_IOBASE_LEN) {
			FUNC11(ql_log_warn, ha->pdev, 0x0012,
			    "Invalid pci I/O region size (%s).\n",
			    FUNC4(ha->pdev));
			pio = 0;
		}
	} else {
		FUNC11(ql_log_warn, ha->pdev, 0x0013,
		    "Region #0 no a PIO resource (%s).\n",
		    FUNC4(ha->pdev));
		pio = 0;
	}
	ha->pio_address = pio;
	FUNC10(ql_dbg_init, ha->pdev, 0x0014,
	    "PIO address=%llu.\n",
	    (unsigned long long)ha->pio_address);

skip_pio:
	/* Use MMIO operations for all accesses. */
	if (!(FUNC7(ha->pdev, 1) & IORESOURCE_MEM)) {
		FUNC11(ql_log_fatal, ha->pdev, 0x0015,
		    "Region #1 not an MMIO resource (%s), aborting.\n",
		    FUNC4(ha->pdev));
		goto iospace_error_exit;
	}
	if (FUNC8(ha->pdev, 1) < MIN_IOBASE_LEN) {
		FUNC11(ql_log_fatal, ha->pdev, 0x0016,
		    "Invalid PCI mem region size (%s), aborting.\n",
		    FUNC4(ha->pdev));
		goto iospace_error_exit;
	}

	ha->iobase = FUNC2(FUNC9(ha->pdev, 1), MIN_IOBASE_LEN);
	if (!ha->iobase) {
		FUNC11(ql_log_fatal, ha->pdev, 0x0017,
		    "Cannot remap MMIO (%s), aborting.\n",
		    FUNC4(ha->pdev));
		goto iospace_error_exit;
	}

	/* Determine queue resources */
	ha->max_req_queues = ha->max_rsp_queues = 1;
	if ((ql2xmaxqueues <= 1 && !ql2xmultique_tag) ||
		(ql2xmaxqueues > 1 && ql2xmultique_tag) ||
		(!FUNC0(ha) && !FUNC1(ha)))
		goto mqiobase_exit;

	ha->mqiobase = FUNC2(FUNC9(ha->pdev, 3),
			FUNC8(ha->pdev, 3));
	if (ha->mqiobase) {
		FUNC10(ql_dbg_init, ha->pdev, 0x0018,
		    "MQIO Base=%p.\n", ha->mqiobase);
		/* Read MSIX vector size of the board */
		FUNC5(ha->pdev, QLA_PCI_MSIX_CONTROL, &msix);
		ha->msix_count = msix;
		/* Max queues are bounded by available msix vectors */
		/* queue 0 uses two msix vectors */
		if (ql2xmultique_tag) {
			cpus = FUNC3();
			ha->max_rsp_queues = (ha->msix_count - 1 > cpus) ?
				(cpus + 1) : (ha->msix_count - 1);
			ha->max_req_queues = 2;
		} else if (ql2xmaxqueues > 1) {
			ha->max_req_queues = ql2xmaxqueues > QLA_MQ_SIZE ?
			    QLA_MQ_SIZE : ql2xmaxqueues;
			FUNC10(ql_dbg_multiq, ha->pdev, 0xc008,
			    "QoS mode set, max no of request queues:%d.\n",
			    ha->max_req_queues);
			FUNC10(ql_dbg_init, ha->pdev, 0x0019,
			    "QoS mode set, max no of request queues:%d.\n",
			    ha->max_req_queues);
		}
		FUNC11(ql_log_info, ha->pdev, 0x001a,
		    "MSI-X vector count: %d.\n", msix);
	} else
		FUNC11(ql_log_info, ha->pdev, 0x001b,
		    "BAR 3 not enabled.\n");

mqiobase_exit:
	ha->msix_count = ha->max_rsp_queues + 1;
	FUNC10(ql_dbg_init, ha->pdev, 0x001c,
	    "MSIX Count:%d.\n", ha->msix_count);
	return (0);

iospace_error_exit:
	return (-ENOMEM);
}