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
struct kvm_pic_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioapic; int /*<<< orphan*/  pic; } ;
struct kvm_irqchip {int chip_id; TYPE_1__ chip; } ;
struct kvm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pics; } ;

/* Variables and functions */
 int EINVAL ; 
#define  KVM_IRQCHIP_IOAPIC 130 
#define  KVM_IRQCHIP_PIC_MASTER 129 
#define  KVM_IRQCHIP_PIC_SLAVE 128 
 int FUNC0 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (struct kvm*) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, struct kvm_irqchip *chip)
{
	int r;

	r = 0;
	switch (chip->chip_id) {
	case KVM_IRQCHIP_PIC_MASTER:
		FUNC1(&chip->chip.pic,
			&FUNC2(kvm)->pics[0],
			sizeof(struct kvm_pic_state));
		break;
	case KVM_IRQCHIP_PIC_SLAVE:
		FUNC1(&chip->chip.pic,
			&FUNC2(kvm)->pics[1],
			sizeof(struct kvm_pic_state));
		break;
	case KVM_IRQCHIP_IOAPIC:
		r = FUNC0(kvm, &chip->chip.ioapic);
		break;
	default:
		r = -EINVAL;
		break;
	}
	return r;
}