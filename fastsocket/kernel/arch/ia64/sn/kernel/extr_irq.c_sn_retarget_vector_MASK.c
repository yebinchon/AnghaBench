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
typedef  scalar_t__ u64 ;
struct sn_pcibus_provider {int /*<<< orphan*/  (* target_interrupt ) (struct sn_irq_info*) ;} ;
struct sn_irq_info {int irq_irq; int irq_cpuid; size_t irq_bridge_type; scalar_t__ irq_int_bit; int /*<<< orphan*/  irq_slice; int /*<<< orphan*/  irq_nasid; int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; scalar_t__ irq_bridge; } ;
typedef  int nasid_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sn_irq_info*) ; 
 struct sn_irq_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sn_irq_info*,struct sn_irq_info*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int,struct sn_irq_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,struct sn_irq_info*) ; 
 int FUNC14 (int,int,struct sn_irq_info*,int,int) ; 
 int /*<<< orphan*/  sn_irq_info_free ; 
 int /*<<< orphan*/  sn_irq_info_lock ; 
 struct sn_pcibus_provider** sn_pci_provider ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct sn_irq_info*) ; 

struct sn_irq_info *FUNC19(struct sn_irq_info *sn_irq_info,
				       nasid_t nasid, int slice)
{
	int vector;
	int cpuid;
#ifdef CONFIG_SMP
	int cpuphys;
#endif
	int64_t bridge;
	int local_widget, status;
	nasid_t local_nasid;
	struct sn_irq_info *new_irq_info;
	struct sn_pcibus_provider *pci_provider;

	bridge = (u64) sn_irq_info->irq_bridge;
	if (!bridge) {
		return NULL; /* irq is not a device interrupt */
	}

	local_nasid = FUNC0(bridge);

	if (local_nasid & 1)
		local_widget = FUNC2(bridge);
	else
		local_widget = FUNC1(bridge);
	vector = sn_irq_info->irq_irq;

	/* Make use of SAL_INTR_REDIRECT if PROM supports it */
	status = FUNC14(local_nasid, local_widget, sn_irq_info, nasid, slice);
	if (!status) {
		new_irq_info = sn_irq_info;
		goto finish_up;
	}

	/*
	 * PROM does not support SAL_INTR_REDIRECT, or it failed.
	 * Revert to old method.
	 */
	new_irq_info = FUNC6(sizeof(struct sn_irq_info), GFP_ATOMIC);
	if (new_irq_info == NULL)
		return NULL;

	FUNC8(new_irq_info, sn_irq_info, sizeof(struct sn_irq_info));

	/* Free the old PROM new_irq_info structure */
	FUNC13(local_nasid, local_widget, new_irq_info);
	FUNC18(new_irq_info);

	/* allocate a new PROM new_irq_info struct */
	status = FUNC12(local_nasid, local_widget,
			       new_irq_info, vector,
			       nasid, slice);

	/* SAL call failed */
	if (status) {
		FUNC5(new_irq_info);
		return NULL;
	}

	FUNC10(new_irq_info);
	FUNC15(&sn_irq_info_lock);
	FUNC7(&sn_irq_info->list, &new_irq_info->list);
	FUNC16(&sn_irq_info_lock);
	FUNC3(&sn_irq_info->rcu, sn_irq_info_free);


finish_up:
	/* Update kernels new_irq_info with new target info */
	cpuid = FUNC9(new_irq_info->irq_nasid,
				     new_irq_info->irq_slice);
	new_irq_info->irq_cpuid = cpuid;

	pci_provider = sn_pci_provider[new_irq_info->irq_bridge_type];

	/*
	 * If this represents a line interrupt, target it.  If it's
	 * an msi (irq_int_bit < 0), it's already targeted.
	 */
	if (new_irq_info->irq_int_bit >= 0 &&
	    pci_provider && pci_provider->target_interrupt)
		(pci_provider->target_interrupt)(new_irq_info);

#ifdef CONFIG_SMP
	cpuphys = cpu_physical_id(cpuid);
	set_irq_affinity_info((vector & 0xff), cpuphys, 0);
#endif

	return new_irq_info;
}