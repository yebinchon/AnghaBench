#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct sn_flush_nasid_entry {scalar_t__* iio_itte; struct sn_flush_device_kernel** widget_p; } ;
struct sn_flush_device_kernel {int /*<<< orphan*/  sfdl_flush_lock; struct sn_flush_device_common* common; } ;
struct sn_flush_device_common {int* sfdl_flush_addr; scalar_t__ sfdl_force_int_addr; scalar_t__ sfdl_slot; int /*<<< orphan*/  sfdl_pcibus_info; TYPE_1__* sfdl_bar_list; } ;
struct hubdev_info {struct sn_flush_nasid_entry hdi_flush_nasid_list; } ;
typedef  int nasid_t ;
struct TYPE_4__ {struct hubdev_info* pdinfo; } ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (scalar_t__) ; 
 int DEV_PER_WIDGET ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_2__* FUNC5 (int) ; 
 int PCI_ROM_RESOURCE ; 
 int PV907516 ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  TIO_NODE_ID ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  sn_ioif_inited ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC20(u64 addr)
{
	nasid_t nasid;
	int is_tio;
	int wid_num;
	int i, j;
	unsigned long flags;
	u64 itte;
	struct hubdev_info *hubinfo;
	struct sn_flush_device_kernel *p;
	struct sn_flush_device_common *common;
	struct sn_flush_nasid_entry *flush_nasid_list;

	if (!sn_ioif_inited)
		return;

	nasid = FUNC4(addr);
	if (-1 == FUNC16(nasid))
		return;

	hubinfo = (FUNC5(FUNC16(nasid)))->pdinfo;

	FUNC0(!hubinfo);

	flush_nasid_list = &hubinfo->hdi_flush_nasid_list;
	if (flush_nasid_list->widget_p == NULL)
		return;

	is_tio = (nasid & 1);
	if (is_tio) {
		int itte_index;

		if (FUNC8(addr))
			itte_index = 0;
		else if (FUNC7(addr))
			itte_index = FUNC7(addr);
		else
			itte_index = -1;

		if (itte_index >= 0) {
			itte = flush_nasid_list->iio_itte[itte_index];
			if (! FUNC10(itte))
				return;
			wid_num = FUNC11(itte);
		} else
			wid_num = FUNC12(addr);
	} else {
		if (FUNC1(addr)) {
			itte = flush_nasid_list->iio_itte[FUNC1(addr)];
			wid_num = FUNC3(itte);
		} else
			wid_num = FUNC6(addr);
	}
	if (flush_nasid_list->widget_p[wid_num] == NULL)
		return;
	p = &flush_nasid_list->widget_p[wid_num][0];

	/* find a matching BAR */
	for (i = 0; i < DEV_PER_WIDGET; i++,p++) {
		common = p->common;
		for (j = 0; j < PCI_ROM_RESOURCE; j++) {
			if (common->sfdl_bar_list[j].start == 0)
				break;
			if (addr >= common->sfdl_bar_list[j].start
			    && addr <= common->sfdl_bar_list[j].end)
				break;
		}
		if (j < PCI_ROM_RESOURCE && common->sfdl_bar_list[j].start != 0)
			break;
	}

	/* if no matching BAR, return without doing anything. */
	if (i == DEV_PER_WIDGET)
		return;

	/*
	 * For TIOCP use the Device(x) Write Request Buffer Flush Bridge
	 * register since it ensures the data has entered the coherence
	 * domain, unlike PIC.
	 */
	if (is_tio) {
		/*
	 	 * Note:  devices behind TIOCE should never be matched in the
		 * above code, and so the following code is PIC/CP centric.
		 * If CE ever needs the sn_dma_flush mechanism, we will have
		 * to account for that here and in tioce_bus_fixup().
	 	 */
		u32 tio_id = FUNC2(FUNC9(nasid, TIO_NODE_ID));
		u32 revnum = FUNC13(tio_id);

		/* TIOCP BRINGUP WAR (PV907516): Don't write buffer flush reg */
		if ((1 << FUNC14(revnum)) & PV907516) {
			return;
		} else {
			FUNC17(common->sfdl_pcibus_info,
					     (common->sfdl_slot - 1));
		}
	} else {
		FUNC18(&p->sfdl_flush_lock, flags);
		*common->sfdl_flush_addr = 0;

		/* force an interrupt. */
		*(volatile u32 *)(common->sfdl_force_int_addr) = 1;

		/* wait for the interrupt to come back. */
		while (*(common->sfdl_flush_addr) != 0x10f)
			FUNC15();

		/* okay, everything is synched up. */
		FUNC19(&p->sfdl_flush_lock, flags);
	}
	return;
}