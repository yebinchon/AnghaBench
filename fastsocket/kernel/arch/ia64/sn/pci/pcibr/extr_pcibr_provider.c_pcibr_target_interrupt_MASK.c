#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sn_irq_info {int irq_int_bit; scalar_t__ irq_pciioinfo; int /*<<< orphan*/  irq_xtalkaddr; } ;
struct pcidev_info {TYPE_1__* pdi_host_pcidev_info; } ;
struct pcibus_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ pdi_pcibus_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcibus_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcibus_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcibus_info*,int) ; 

void FUNC4(struct sn_irq_info *sn_irq_info)
{
	struct pcidev_info *pcidev_info;
	struct pcibus_info *pcibus_info;
	int bit = sn_irq_info->irq_int_bit;
	u64 xtalk_addr = sn_irq_info->irq_xtalkaddr;

	pcidev_info = (struct pcidev_info *)sn_irq_info->irq_pciioinfo;
	if (pcidev_info) {
		pcibus_info =
		    (struct pcibus_info *)pcidev_info->pdi_host_pcidev_info->
		    pdi_pcibus_info;

		/* Disable the device's IRQ   */
		FUNC2(pcibus_info, (1 << bit));

		/* Change the device's IRQ    */
		FUNC1(pcibus_info, bit, xtalk_addr);

		/* Re-enable the device's IRQ */
		FUNC3(pcibus_info, (1 << bit));

		FUNC0(sn_irq_info);
	}
}