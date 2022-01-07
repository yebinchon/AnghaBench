
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frg; scalar_t__ csum; scalar_t__ v6; scalar_t__ v4; scalar_t__ udp; scalar_t__ tcp; int cnc; } ;
union Vmxnet3_GenericDesc {TYPE_1__ rcd; int * dword; } ;
struct vmxnet3_adapter {scalar_t__ rxcsum; } ;
struct sk_buff {int ip_summed; int csum; } ;


 int BUG_ON (int) ;
 int CHECKSUM_PARTIAL ;
 int CHECKSUM_UNNECESSARY ;
 int VMXNET3_RCD_CSUM_OK ;
 int htons (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static void
vmxnet3_rx_csum(struct vmxnet3_adapter *adapter,
  struct sk_buff *skb,
  union Vmxnet3_GenericDesc *gdesc)
{
 if (!gdesc->rcd.cnc && adapter->rxcsum) {

  if ((le32_to_cpu(gdesc->dword[3]) & VMXNET3_RCD_CSUM_OK) ==
       VMXNET3_RCD_CSUM_OK) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   BUG_ON(!(gdesc->rcd.tcp || gdesc->rcd.udp));
   BUG_ON(!(gdesc->rcd.v4 || gdesc->rcd.v6));
   BUG_ON(gdesc->rcd.frg);
  } else {
   if (gdesc->rcd.csum) {
    skb->csum = htons(gdesc->rcd.csum);
    skb->ip_summed = CHECKSUM_PARTIAL;
   } else {
    skb_checksum_none_assert(skb);
   }
  }
 } else {
  skb_checksum_none_assert(skb);
 }
}
