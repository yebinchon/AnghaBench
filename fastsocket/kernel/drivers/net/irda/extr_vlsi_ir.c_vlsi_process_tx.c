
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vlsi_ring {int dir; int len; int pdev; } ;
struct ring_descr {TYPE_1__* skb; } ;
struct TYPE_2__ {int len; } ;


 int RD_TX_UNDRN ;
 int VLSI_TX_FIFO ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int rd_get_addr (struct ring_descr*) ;
 int rd_get_count (struct ring_descr*) ;
 int rd_get_status (struct ring_descr*) ;
 int rd_set_count (struct ring_descr*,int ) ;
 int rd_set_status (struct ring_descr*,int ) ;

__attribute__((used)) static int vlsi_process_tx(struct vlsi_ring *r, struct ring_descr *rd)
{
 u16 status;
 int len;
 int ret;

 pci_dma_sync_single_for_cpu(r->pdev, rd_get_addr(rd), r->len, r->dir);

 status = rd_get_status(rd);
 if (status & RD_TX_UNDRN)
  ret = VLSI_TX_FIFO;
 else
  ret = 0;
 rd_set_status(rd, 0);

 if (rd->skb) {
  len = rd->skb->len;
  dev_kfree_skb_any(rd->skb);
  rd->skb = ((void*)0);
 }
 else
  len = rd_get_count(rd);

 rd_set_count(rd, 0);


 return (ret) ? -ret : len;
}
