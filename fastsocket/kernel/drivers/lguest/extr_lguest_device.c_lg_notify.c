
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {struct lguest_vq_info* priv; } ;
struct TYPE_2__ {int pfn; } ;
struct lguest_vq_info {TYPE_1__ config; } ;


 int LHCALL_NOTIFY ;
 int PAGE_SHIFT ;
 int kvm_hypercall1 (int ,int) ;

__attribute__((used)) static void lg_notify(struct virtqueue *vq)
{




 struct lguest_vq_info *lvq = vq->priv;

 kvm_hypercall1(LHCALL_NOTIFY, lvq->config.pfn << PAGE_SHIFT);
}
