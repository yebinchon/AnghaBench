
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_info {unsigned int len; } ;
struct device {int dummy; } ;
struct TxDesc {int addr; int opts1; int opts2; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (struct device*,int ,unsigned int,int ) ;
 int le64_to_cpu (int) ;

__attribute__((used)) static void rtl8169_unmap_tx_skb(struct device *d, struct ring_info *tx_skb,
     struct TxDesc *desc)
{
 unsigned int len = tx_skb->len;

 dma_unmap_single(d, le64_to_cpu(desc->addr), len, DMA_TO_DEVICE);

 desc->opts1 = 0x00;
 desc->opts2 = 0x00;
 desc->addr = 0x00;
 tx_skb->len = 0;
}
