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
typedef  int u8 ;
struct cpufreq_freqs {unsigned int new; int /*<<< orphan*/  old; scalar_t__ cpu; } ;
struct TYPE_4__ {int on_duration; int off_duration; int pci_pmer1; int pci_suscfg; TYPE_1__* cs55x0; } ;
struct TYPE_3__ {int device; int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int IRQ_SPDUP ; 
#define  PCI_DEVICE_ID_CYRIX_5510 130 
#define  PCI_DEVICE_ID_CYRIX_5520 129 
#define  PCI_DEVICE_ID_CYRIX_5530_LEGACY 128 
 int /*<<< orphan*/  PCI_IRQTC ; 
 int /*<<< orphan*/  PCI_MODOFF ; 
 int /*<<< orphan*/  PCI_MODON ; 
 int /*<<< orphan*/  PCI_PMER1 ; 
 int /*<<< orphan*/  PCI_SUSCFG ; 
 int /*<<< orphan*/  PCI_VIDTC ; 
 int PWRSVE ; 
 int SUSMOD ; 
 int VID_SPDUP ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* gx_params ; 
 unsigned int FUNC3 (unsigned int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 unsigned int stock_freq ; 

__attribute__((used)) static void FUNC8(unsigned int khz)
{
	u8 suscfg, pmer1;
	unsigned int new_khz;
	unsigned long flags;
	struct cpufreq_freqs freqs;

	freqs.cpu = 0;
	freqs.old = FUNC2(0);

	new_khz = FUNC3(khz, &gx_params->on_duration,
			&gx_params->off_duration);

	freqs.new = new_khz;

	FUNC0(&freqs, CPUFREQ_PRECHANGE);
	FUNC6(flags);



	if (new_khz != stock_freq) {
		/* if new khz == 100% of CPU speed, it is special case */
		switch (gx_params->cs55x0->device) {
		case PCI_DEVICE_ID_CYRIX_5530_LEGACY:
			pmer1 = gx_params->pci_pmer1 | IRQ_SPDUP | VID_SPDUP;
			/* FIXME: need to test other values -- Zwane,Miura */
			/* typical 2 to 4ms */
			FUNC4(PCI_IRQTC, 4);
			/* typical 50 to 100ms */
			FUNC4(PCI_VIDTC, 100);
			FUNC4(PCI_PMER1, pmer1);

			if (gx_params->cs55x0->revision < 0x10) {
				/* CS5530(rev 1.2, 1.3) */
				suscfg = gx_params->pci_suscfg|SUSMOD;
			} else {
				/* CS5530A,B.. */
				suscfg = gx_params->pci_suscfg|SUSMOD|PWRSVE;
			}
			break;
		case PCI_DEVICE_ID_CYRIX_5520:
		case PCI_DEVICE_ID_CYRIX_5510:
			suscfg = gx_params->pci_suscfg | SUSMOD;
			break;
		default:
			FUNC5(flags);
			FUNC1("fatal: try to set unknown chipset.\n");
			return;
		}
	} else {
		suscfg = gx_params->pci_suscfg & ~(SUSMOD);
		gx_params->off_duration = 0;
		gx_params->on_duration = 0;
		FUNC1("suspend modulation disabled: cpu runs 100%% speed.\n");
	}

	FUNC4(PCI_MODOFF, gx_params->off_duration);
	FUNC4(PCI_MODON, gx_params->on_duration);

	FUNC4(PCI_SUSCFG, suscfg);
	FUNC7(gx_params->cs55x0, PCI_SUSCFG, &suscfg);

	FUNC5(flags);

	gx_params->pci_suscfg = suscfg;

	FUNC0(&freqs, CPUFREQ_POSTCHANGE);

	FUNC1("suspend modulation w/ duration of ON:%d us, OFF:%d us\n",
		gx_params->on_duration * 32, gx_params->off_duration * 32);
	FUNC1("suspend modulation w/ clock speed: %d kHz.\n", freqs.new);
}