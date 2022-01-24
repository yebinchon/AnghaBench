#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvm_pic_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioapic; int /*<<< orphan*/  pic; } ;
struct kvm_irqchip {int chip_id; TYPE_1__ chip; } ;
struct kvm {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pics; } ;

/* Variables and functions */
 int EINVAL ; 
#define  KVM_IRQCHIP_IOAPIC 130 
#define  KVM_IRQCHIP_PIC_MASTER 129 
#define  KVM_IRQCHIP_PIC_SLAVE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm, struct kvm_irqchip *chip)
{
	int r;

	r = 0;
	switch (chip->chip_id) {
	case KVM_IRQCHIP_PIC_MASTER:
		FUNC4(&FUNC3(kvm)->lock);
		FUNC2(&FUNC3(kvm)->pics[0],
			&chip->chip.pic,
			sizeof(struct kvm_pic_state));
		FUNC5(&FUNC3(kvm)->lock);
		break;
	case KVM_IRQCHIP_PIC_SLAVE:
		FUNC4(&FUNC3(kvm)->lock);
		FUNC2(&FUNC3(kvm)->pics[1],
			&chip->chip.pic,
			sizeof(struct kvm_pic_state));
		FUNC5(&FUNC3(kvm)->lock);
		break;
	case KVM_IRQCHIP_IOAPIC:
		r = FUNC1(kvm, &chip->chip.ioapic);
		break;
	default:
		r = -EINVAL;
		break;
	}
	FUNC0(FUNC3(kvm));
	return r;
}