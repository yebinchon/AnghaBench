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
struct kvm_pic {int /*<<< orphan*/  dev; TYPE_1__* pics; struct kvm* irq_request_opaque; int /*<<< orphan*/  irq_request; struct kvm* kvm; int /*<<< orphan*/  lock; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;
struct TYPE_2__ {int elcr_mask; int isr_ack; struct kvm_pic* pics_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_pic*) ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kvm_pic* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pic_irq_request ; 
 int /*<<< orphan*/  picdev_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct kvm_pic *FUNC7(struct kvm *kvm)
{
	struct kvm_pic *s;
	int ret;

	s = FUNC3(sizeof(struct kvm_pic), GFP_KERNEL);
	if (!s)
		return NULL;
	FUNC6(&s->lock);
	s->kvm = kvm;
	s->pics[0].elcr_mask = 0xf8;
	s->pics[1].elcr_mask = 0xde;
	s->irq_request = pic_irq_request;
	s->irq_request_opaque = kvm;
	s->pics[0].pics_state = s;
	s->pics[1].pics_state = s;
	s->pics[0].isr_ack = 0xff;
	s->pics[1].isr_ack = 0xff;

	/*
	 * Initialize PIO device
	 */
	FUNC2(&s->dev, &picdev_ops);
	FUNC4(&kvm->slots_lock);
	ret = FUNC1(kvm, KVM_PIO_BUS, &s->dev);
	FUNC5(&kvm->slots_lock);
	if (ret < 0) {
		FUNC0(s);
		return NULL;
	}

	return s;
}