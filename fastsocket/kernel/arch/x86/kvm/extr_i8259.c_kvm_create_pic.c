
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pic {int dev; TYPE_1__* pics; struct kvm* irq_request_opaque; int irq_request; struct kvm* kvm; int lock; } ;
struct kvm {int slots_lock; } ;
struct TYPE_2__ {int elcr_mask; int isr_ack; struct kvm_pic* pics_state; } ;


 int GFP_KERNEL ;
 int KVM_PIO_BUS ;
 int kfree (struct kvm_pic*) ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 struct kvm_pic* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pic_irq_request ;
 int picdev_ops ;
 int spin_lock_init (int *) ;

struct kvm_pic *kvm_create_pic(struct kvm *kvm)
{
 struct kvm_pic *s;
 int ret;

 s = kzalloc(sizeof(struct kvm_pic), GFP_KERNEL);
 if (!s)
  return ((void*)0);
 spin_lock_init(&s->lock);
 s->kvm = kvm;
 s->pics[0].elcr_mask = 0xf8;
 s->pics[1].elcr_mask = 0xde;
 s->irq_request = pic_irq_request;
 s->irq_request_opaque = kvm;
 s->pics[0].pics_state = s;
 s->pics[1].pics_state = s;
 s->pics[0].isr_ack = 0xff;
 s->pics[1].isr_ack = 0xff;




 kvm_iodevice_init(&s->dev, &picdev_ops);
 mutex_lock(&kvm->slots_lock);
 ret = kvm_io_bus_register_dev(kvm, KVM_PIO_BUS, &s->dev);
 mutex_unlock(&kvm->slots_lock);
 if (ret < 0) {
  kfree(s);
  return ((void*)0);
 }

 return s;
}
