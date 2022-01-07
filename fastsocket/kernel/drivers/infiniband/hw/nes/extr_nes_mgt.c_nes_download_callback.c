
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pau_fpdu_info {int frag_cnt; int hdr_pbase; scalar_t__ hdr_vbase; int hdr_len; TYPE_1__* frags; struct nes_qp* nesqp; } ;
struct nes_qp {int cm_node; } ;
struct nes_device {int pcidev; } ;
struct nes_cqp_request {struct pau_fpdu_info* cqp_callback_pointer; } ;
struct TYPE_2__ {scalar_t__ cmplt; struct sk_buff* skb; } ;


 int PCI_DMA_TODEVICE ;
 int kfree (struct pau_fpdu_info*) ;
 int nes_mgt_free_skb (struct nes_device*,struct sk_buff*,int ) ;
 int nes_rem_ref_cm_node (int ) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void nes_download_callback(struct nes_device *nesdev, struct nes_cqp_request *cqp_request)
{
 struct pau_fpdu_info *fpdu_info = cqp_request->cqp_callback_pointer;
 struct nes_qp *nesqp = fpdu_info->nesqp;
 struct sk_buff *skb;
 int i;

 for (i = 0; i < fpdu_info->frag_cnt; i++) {
  skb = fpdu_info->frags[i].skb;
  if (fpdu_info->frags[i].cmplt) {
   nes_mgt_free_skb(nesdev, skb, PCI_DMA_TODEVICE);
   nes_rem_ref_cm_node(nesqp->cm_node);
  }
 }

 if (fpdu_info->hdr_vbase)
  pci_free_consistent(nesdev->pcidev, fpdu_info->hdr_len,
        fpdu_info->hdr_vbase, fpdu_info->hdr_pbase);
 kfree(fpdu_info);
}
