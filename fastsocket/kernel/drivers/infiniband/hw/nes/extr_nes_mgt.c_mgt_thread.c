
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int * cb; scalar_t__ data; } ;
struct nes_vnic {int mgt_skb_list; int max_frame_size; TYPE_1__* nesdev; int mgt_wait_queue; } ;
struct nes_rskb_cb {TYPE_2__* nesqp; scalar_t__ data_start; int busaddr; } ;
struct TYPE_4__ {int cm_node; } ;
struct TYPE_3__ {int pcidev; } ;


 scalar_t__ ETH_HLEN ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ kthread_should_stop () ;
 int nes_rem_ref_cm_node (int ) ;
 int pci_map_single (int ,scalar_t__,int ,int ) ;
 int queue_fpdus (struct sk_buff*,struct nes_vnic*,TYPE_2__*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int mgt_thread(void *context)
{
 struct nes_vnic *nesvnic = context;
 struct sk_buff *skb;
 struct nes_rskb_cb *cb;

 while (!kthread_should_stop()) {
  wait_event_interruptible(nesvnic->mgt_wait_queue,
      skb_queue_len(&nesvnic->mgt_skb_list) || kthread_should_stop());
  while ((skb_queue_len(&nesvnic->mgt_skb_list)) && !kthread_should_stop()) {
   skb = skb_dequeue(&nesvnic->mgt_skb_list);
   cb = (struct nes_rskb_cb *)&skb->cb[0];
   cb->data_start = skb->data - ETH_HLEN;
   cb->busaddr = pci_map_single(nesvnic->nesdev->pcidev, cb->data_start,
           nesvnic->max_frame_size, PCI_DMA_TODEVICE);
   queue_fpdus(skb, nesvnic, cb->nesqp);
  }
 }


 while (skb_queue_len(&nesvnic->mgt_skb_list)) {
  skb = skb_dequeue(&nesvnic->mgt_skb_list);
  cb = (struct nes_rskb_cb *)&skb->cb[0];
  nes_rem_ref_cm_node(cb->nesqp->cm_node);
  dev_kfree_skb_any(skb);
 }
 return 0;
}
