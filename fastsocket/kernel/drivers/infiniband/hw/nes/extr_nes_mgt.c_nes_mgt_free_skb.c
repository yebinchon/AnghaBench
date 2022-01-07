
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int * cb; } ;
struct nes_rskb_cb {scalar_t__ busaddr; int maplen; } ;
struct nes_device {int pcidev; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void nes_mgt_free_skb(struct nes_device *nesdev, struct sk_buff *skb, u32 dir)
{
 struct nes_rskb_cb *cb;

 cb = (struct nes_rskb_cb *)&skb->cb[0];
 pci_unmap_single(nesdev->pcidev, cb->busaddr, cb->maplen, dir);
 cb->busaddr = 0;
 dev_kfree_skb_any(skb);
}
