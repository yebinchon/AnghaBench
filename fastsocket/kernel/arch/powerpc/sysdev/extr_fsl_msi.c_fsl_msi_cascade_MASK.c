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
typedef  int u32 ;
struct irq_desc {int status; int /*<<< orphan*/  lock; TYPE_1__* chip; scalar_t__ handler_data; } ;
struct fsl_msi {int feature; int /*<<< orphan*/  irqhost; int /*<<< orphan*/  msi_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask ) (unsigned int) ;int /*<<< orphan*/  (* eoi ) (unsigned int) ;int /*<<< orphan*/  (* ack ) (unsigned int) ;int /*<<< orphan*/  (* mask ) (unsigned int) ;int /*<<< orphan*/  (* mask_ack ) (unsigned int) ;} ;

/* Variables and functions */
#define  FSL_PIC_IP_IPIC 129 
 int FSL_PIC_IP_MASK ; 
#define  FSL_PIC_IP_MPIC 128 
 int IRQS_PER_MSI_REG ; 
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 unsigned int NO_IRQ ; 
 int NR_MSI_REG ; 
 int FUNC0 (int) ; 
 struct fsl_msi* fsl_msi ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(unsigned int irq, struct irq_desc *desc)
{
	unsigned int cascade_irq;
	struct fsl_msi *msi_data = fsl_msi;
	int msir_index = -1;
	u32 msir_value = 0;
	u32 intr_index;
	u32 have_shift = 0;

	FUNC4(&desc->lock);
	if ((msi_data->feature &  FSL_PIC_IP_MASK) == FSL_PIC_IP_IPIC) {
		if (desc->chip->mask_ack)
			desc->chip->mask_ack(irq);
		else {
			desc->chip->mask(irq);
			desc->chip->ack(irq);
		}
	}

	if (FUNC11(desc->status & IRQ_INPROGRESS))
		goto unlock;

	msir_index = (int)desc->handler_data;

	if (msir_index >= NR_MSI_REG)
		cascade_irq = NO_IRQ;

	desc->status |= IRQ_INPROGRESS;
	switch (fsl_msi->feature & FSL_PIC_IP_MASK) {
	case FSL_PIC_IP_MPIC:
		msir_value = FUNC1(msi_data->msi_regs,
			msir_index * 0x10);
		break;
	case FSL_PIC_IP_IPIC:
		msir_value = FUNC1(msi_data->msi_regs, msir_index * 0x4);
		break;
	}

	while (msir_value) {
		intr_index = FUNC0(msir_value) - 1;

		cascade_irq = FUNC3(msi_data->irqhost,
				msir_index * IRQS_PER_MSI_REG +
					intr_index + have_shift);
		if (cascade_irq != NO_IRQ)
			FUNC2(cascade_irq);
		have_shift += intr_index + 1;
		msir_value = msir_value >> (intr_index + 1);
	}
	desc->status &= ~IRQ_INPROGRESS;

	switch (msi_data->feature & FSL_PIC_IP_MASK) {
	case FSL_PIC_IP_MPIC:
		desc->chip->eoi(irq);
		break;
	case FSL_PIC_IP_IPIC:
		if (!(desc->status & IRQ_DISABLED) && desc->chip->unmask)
			desc->chip->unmask(irq);
		break;
	}
unlock:
	FUNC5(&desc->lock);
}