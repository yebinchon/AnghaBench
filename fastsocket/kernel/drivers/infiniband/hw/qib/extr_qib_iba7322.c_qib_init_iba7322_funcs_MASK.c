#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qib_pportdata {int dummy; } ;
struct qib_msix_entry {int dummy; } ;
struct qib_devdata {scalar_t__ num_pports; int first_user_ctxt; TYPE_2__* cspec; scalar_t__* rcd; int /*<<< orphan*/  f_tempsense_rd; int /*<<< orphan*/  f_writescratch; int /*<<< orphan*/  f_sdma_init_early; int /*<<< orphan*/  f_sdma_hw_start_up; int /*<<< orphan*/  f_sdma_hw_clean_up; int /*<<< orphan*/  f_xgxs_reset; int /*<<< orphan*/  f_wantpiobuf_intr; int /*<<< orphan*/  f_update_usrhead; int /*<<< orphan*/  f_txchk_change; int /*<<< orphan*/  f_setextled; int /*<<< orphan*/  f_set_intr_state; int /*<<< orphan*/  f_set_ib_table; int /*<<< orphan*/  f_get_ib_table; int /*<<< orphan*/  f_set_ib_loopback; int /*<<< orphan*/  f_set_ib_cfg; int /*<<< orphan*/  f_get_ib_cfg; int /*<<< orphan*/  f_ibphys_portstate; int /*<<< orphan*/  f_iblink_state; int /*<<< orphan*/  f_set_cntr_sample; int /*<<< orphan*/  f_set_armlaunch; int /*<<< orphan*/  f_sendctrl; int /*<<< orphan*/  f_sdma_update_tail; int /*<<< orphan*/  f_sdma_set_desc_cnt; int /*<<< orphan*/  f_sdma_sendctrl; int /*<<< orphan*/  f_sdma_gethead; int /*<<< orphan*/  f_sdma_busy; int /*<<< orphan*/  f_init_sdma_regs; int /*<<< orphan*/  f_reset; int /*<<< orphan*/  f_read_portcntrs; int /*<<< orphan*/  f_read_cntrs; int /*<<< orphan*/  f_rcvctrl; int /*<<< orphan*/  f_quiet_serdes; int /*<<< orphan*/  f_put_tid; int /*<<< orphan*/  f_portcntr; int /*<<< orphan*/  f_setpbc_control; int /*<<< orphan*/  f_late_initreg; int /*<<< orphan*/  f_intr_fallback; int /*<<< orphan*/  f_initvl15_bufs; int /*<<< orphan*/  f_init_ctxt; int /*<<< orphan*/  f_ib_updown; int /*<<< orphan*/  f_hdrqempty; int /*<<< orphan*/  f_eeprom_wen; int /*<<< orphan*/  f_gpio_mod; int /*<<< orphan*/  f_getsendbuf; int /*<<< orphan*/  f_get_msgheader; int /*<<< orphan*/  f_get_base_info; int /*<<< orphan*/  f_free_irq; int /*<<< orphan*/  f_clear_tids; int /*<<< orphan*/  f_cleanup; int /*<<< orphan*/  f_bringup_serdes; } ;
struct qib_chippport_specific {int dummy; } ;
struct qib_chip_specific {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_10__ {scalar_t__ port; } ;
struct TYPE_7__ {int entry; } ;
struct TYPE_9__ {TYPE_1__ msix; } ;
struct TYPE_8__ {int num_msix_entries; TYPE_3__* msix_entries; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 struct qib_devdata* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct qib_devdata*) ; 
 int NUM_IB_PORTS ; 
 int /*<<< orphan*/  gpio_7322_mod ; 
 int /*<<< orphan*/  init_sdma_7322_regs ; 
 TYPE_5__* irq_table ; 
 TYPE_3__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kr_hwdiagctrl ; 
 int /*<<< orphan*/  qib_7322_bringup_serdes ; 
 int /*<<< orphan*/  qib_7322_clear_tids ; 
 int /*<<< orphan*/  qib_7322_eeprom_wen ; 
 int /*<<< orphan*/  qib_7322_free_irq ; 
 int /*<<< orphan*/  qib_7322_get_base_info ; 
 int /*<<< orphan*/  qib_7322_get_ib_cfg ; 
 int /*<<< orphan*/  qib_7322_get_ib_table ; 
 int /*<<< orphan*/  qib_7322_get_msgheader ; 
 int /*<<< orphan*/  qib_7322_getsendbuf ; 
 int /*<<< orphan*/  qib_7322_hdrqempty ; 
 int /*<<< orphan*/  qib_7322_ib_updown ; 
 int /*<<< orphan*/  qib_7322_iblink_state ; 
 int /*<<< orphan*/  qib_7322_init_ctxt ; 
 int /*<<< orphan*/  qib_7322_initvl15_bufs ; 
 int /*<<< orphan*/  qib_7322_intr_fallback ; 
 int /*<<< orphan*/  qib_7322_mini_pcs_reset ; 
 int /*<<< orphan*/  qib_7322_mini_quiet_serdes ; 
 int /*<<< orphan*/  qib_7322_phys_portstate ; 
 int /*<<< orphan*/  qib_7322_put_tid ; 
 int /*<<< orphan*/  qib_7322_sdma_hw_clean_up ; 
 int /*<<< orphan*/  qib_7322_sdma_hw_start_up ; 
 int /*<<< orphan*/  qib_7322_sdma_init_early ; 
 int /*<<< orphan*/  qib_7322_sdma_sendctrl ; 
 int /*<<< orphan*/  qib_7322_set_ib_cfg ; 
 int /*<<< orphan*/  qib_7322_set_ib_table ; 
 int /*<<< orphan*/  qib_7322_set_intr_state ; 
 int /*<<< orphan*/  qib_7322_set_loopback ; 
 int /*<<< orphan*/  qib_7322_setpbc_control ; 
 int /*<<< orphan*/  qib_7322_tempsense_rd ; 
 int /*<<< orphan*/  qib_7322_txchk_change ; 
 struct qib_devdata* FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  qib_do_7322_reset ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*) ; 
 int FUNC7 (struct qib_devdata*) ; 
 scalar_t__ qib_krcvq01_no_msi ; 
 int /*<<< orphan*/  qib_late_7322_initreg ; 
 scalar_t__ qib_mini_init ; 
 int /*<<< orphan*/  FUNC8 (struct qib_devdata*) ; 
 int FUNC9 (struct qib_devdata*,struct pci_dev*,struct pci_device_id const*) ; 
 scalar_t__ FUNC10 (struct qib_devdata*,int,int*,TYPE_3__*) ; 
 int /*<<< orphan*/  qib_portcntr_7322 ; 
 int /*<<< orphan*/  qib_read_7322cntrs ; 
 int /*<<< orphan*/  qib_read_7322portcntrs ; 
 int /*<<< orphan*/  qib_sdma_7322_busy ; 
 int /*<<< orphan*/  qib_sdma_7322_gethead ; 
 int /*<<< orphan*/  qib_sdma_set_7322_desc_cnt ; 
 int /*<<< orphan*/  qib_sdma_update_7322_tail ; 
 int /*<<< orphan*/  qib_set_7322_armlaunch ; 
 int /*<<< orphan*/  qib_set_cntr_7322_sample ; 
 int /*<<< orphan*/  qib_setup_7322_cleanup ; 
 int /*<<< orphan*/  FUNC11 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  qib_setup_7322_setextled ; 
 int /*<<< orphan*/  qib_update_7322_usrhead ; 
 int /*<<< orphan*/  qib_wantpiobuf_7322_intr ; 
 int /*<<< orphan*/  FUNC12 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcvctrl_7322_mod ; 
 int /*<<< orphan*/  sendctrl_7322_mod ; 
 int /*<<< orphan*/  writescratch ; 

struct qib_devdata *FUNC13(struct pci_dev *pdev,
					   const struct pci_device_id *ent)
{
	struct qib_devdata *dd;
	int ret, i;
	u32 tabsize, actual_cnt = 0;

	dd = FUNC4(pdev,
		NUM_IB_PORTS * sizeof(struct qib_pportdata) +
		sizeof(struct qib_chip_specific) +
		NUM_IB_PORTS * sizeof(struct qib_chippport_specific));
	if (FUNC2(dd))
		goto bail;

	dd->f_bringup_serdes    = qib_7322_bringup_serdes;
	dd->f_cleanup           = qib_setup_7322_cleanup;
	dd->f_clear_tids        = qib_7322_clear_tids;
	dd->f_free_irq          = qib_7322_free_irq;
	dd->f_get_base_info     = qib_7322_get_base_info;
	dd->f_get_msgheader     = qib_7322_get_msgheader;
	dd->f_getsendbuf        = qib_7322_getsendbuf;
	dd->f_gpio_mod          = gpio_7322_mod;
	dd->f_eeprom_wen        = qib_7322_eeprom_wen;
	dd->f_hdrqempty         = qib_7322_hdrqempty;
	dd->f_ib_updown         = qib_7322_ib_updown;
	dd->f_init_ctxt         = qib_7322_init_ctxt;
	dd->f_initvl15_bufs     = qib_7322_initvl15_bufs;
	dd->f_intr_fallback     = qib_7322_intr_fallback;
	dd->f_late_initreg      = qib_late_7322_initreg;
	dd->f_setpbc_control    = qib_7322_setpbc_control;
	dd->f_portcntr          = qib_portcntr_7322;
	dd->f_put_tid           = qib_7322_put_tid;
	dd->f_quiet_serdes      = qib_7322_mini_quiet_serdes;
	dd->f_rcvctrl           = rcvctrl_7322_mod;
	dd->f_read_cntrs        = qib_read_7322cntrs;
	dd->f_read_portcntrs    = qib_read_7322portcntrs;
	dd->f_reset             = qib_do_7322_reset;
	dd->f_init_sdma_regs    = init_sdma_7322_regs;
	dd->f_sdma_busy         = qib_sdma_7322_busy;
	dd->f_sdma_gethead      = qib_sdma_7322_gethead;
	dd->f_sdma_sendctrl     = qib_7322_sdma_sendctrl;
	dd->f_sdma_set_desc_cnt = qib_sdma_set_7322_desc_cnt;
	dd->f_sdma_update_tail  = qib_sdma_update_7322_tail;
	dd->f_sendctrl          = sendctrl_7322_mod;
	dd->f_set_armlaunch     = qib_set_7322_armlaunch;
	dd->f_set_cntr_sample   = qib_set_cntr_7322_sample;
	dd->f_iblink_state      = qib_7322_iblink_state;
	dd->f_ibphys_portstate  = qib_7322_phys_portstate;
	dd->f_get_ib_cfg        = qib_7322_get_ib_cfg;
	dd->f_set_ib_cfg        = qib_7322_set_ib_cfg;
	dd->f_set_ib_loopback   = qib_7322_set_loopback;
	dd->f_get_ib_table      = qib_7322_get_ib_table;
	dd->f_set_ib_table      = qib_7322_set_ib_table;
	dd->f_set_intr_state    = qib_7322_set_intr_state;
	dd->f_setextled         = qib_setup_7322_setextled;
	dd->f_txchk_change      = qib_7322_txchk_change;
	dd->f_update_usrhead    = qib_update_7322_usrhead;
	dd->f_wantpiobuf_intr   = qib_wantpiobuf_7322_intr;
	dd->f_xgxs_reset        = qib_7322_mini_pcs_reset;
	dd->f_sdma_hw_clean_up  = qib_7322_sdma_hw_clean_up;
	dd->f_sdma_hw_start_up  = qib_7322_sdma_hw_start_up;
	dd->f_sdma_init_early   = qib_7322_sdma_init_early;
	dd->f_writescratch      = writescratch;
	dd->f_tempsense_rd	= qib_7322_tempsense_rd;
	/*
	 * Do remaining PCIe setup and save PCIe values in dd.
	 * Any error printing is already done by the init code.
	 * On return, we have the chip mapped, but chip registers
	 * are not set up until start of qib_init_7322_variables.
	 */
	ret = FUNC9(dd, pdev, ent);
	if (ret < 0)
		goto bail_free;

	/* initialize chip-specific variables */
	ret = FUNC7(dd);
	if (ret)
		goto bail_cleanup;

	if (qib_mini_init || !dd->num_pports)
		goto bail;

	/*
	 * Determine number of vectors we want; depends on port count
	 * and number of configured kernel receive queues actually used.
	 * Should also depend on whether sdma is enabled or not, but
	 * that's such a rare testing case it's not worth worrying about.
	 */
	tabsize = dd->first_user_ctxt + FUNC0(irq_table);
	for (i = 0; i < tabsize; i++)
		if ((i < FUNC0(irq_table) &&
		     irq_table[i].port <= dd->num_pports) ||
		    (i >= FUNC0(irq_table) &&
		     dd->rcd[i - FUNC0(irq_table)]))
			actual_cnt++;
	/* reduce by ctxt's < 2 */
	if (qib_krcvq01_no_msi)
		actual_cnt -= dd->num_pports;

	tabsize = actual_cnt;
	dd->cspec->msix_entries = FUNC3(tabsize *
			sizeof(struct qib_msix_entry), GFP_KERNEL);
	if (!dd->cspec->msix_entries) {
		FUNC5(dd, "No memory for MSIx table\n");
		tabsize = 0;
	}
	for (i = 0; i < tabsize; i++)
		dd->cspec->msix_entries[i].msix.entry = i;

	if (FUNC10(dd, 8, &tabsize, dd->cspec->msix_entries))
		FUNC5(dd,
			"Failed to setup PCIe or interrupts; continuing anyway\n");
	/* may be less than we wanted, if not enough available */
	dd->cspec->num_msix_entries = tabsize;

	/* setup interrupt handler */
	FUNC11(dd, 1);

	/* clear diagctrl register, in case diags were running and crashed */
	FUNC12(dd, kr_hwdiagctrl, 0);

	goto bail;

bail_cleanup:
	FUNC8(dd);
bail_free:
	FUNC6(dd);
	dd = FUNC1(ret);
bail:
	return dd;
}