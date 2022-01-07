
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct hrtimer {int dummy; } ;
struct TYPE_5__ {struct hrtimer timer; } ;
struct TYPE_6__ {int lock; TYPE_1__ pit_timer; int irq_ack_notifier; } ;
struct TYPE_8__ {int wq; TYPE_2__ pit_state; int irq_source_id; int expired; int mask_notifier; int speaker_dev; int dev; } ;


 int KVM_PIO_BUS ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int hrtimer_cancel (struct hrtimer*) ;
 int kfree (TYPE_4__*) ;
 int kvm_free_irq_source_id (struct kvm*,int ) ;
 int kvm_io_bus_unregister_dev (struct kvm*,int ,int *) ;
 int kvm_unregister_irq_ack_notifier (struct kvm*,int *) ;
 int kvm_unregister_irq_mask_notifier (struct kvm*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_free_pit(struct kvm *kvm)
{
 struct hrtimer *timer;

 if (kvm->arch.vpit) {
  kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS, &kvm->arch.vpit->dev);
  kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS,
           &kvm->arch.vpit->speaker_dev);
  kvm_unregister_irq_mask_notifier(kvm, 0,
            &kvm->arch.vpit->mask_notifier);
  kvm_unregister_irq_ack_notifier(kvm,
    &kvm->arch.vpit->pit_state.irq_ack_notifier);
  mutex_lock(&kvm->arch.vpit->pit_state.lock);
  timer = &kvm->arch.vpit->pit_state.pit_timer.timer;
  hrtimer_cancel(timer);
  cancel_work_sync(&kvm->arch.vpit->expired);
  kvm_free_irq_source_id(kvm, kvm->arch.vpit->irq_source_id);
  mutex_unlock(&kvm->arch.vpit->pit_state.lock);
  destroy_workqueue(kvm->arch.vpit->wq);
  kfree(kvm->arch.vpit);
 }
}
