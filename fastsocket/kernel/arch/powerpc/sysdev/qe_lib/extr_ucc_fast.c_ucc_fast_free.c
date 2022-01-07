
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_fast_private {scalar_t__ uf_regs; scalar_t__ ucc_fast_rx_virtual_fifo_base_offset; scalar_t__ ucc_fast_tx_virtual_fifo_base_offset; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct ucc_fast_private*) ;
 int qe_muram_free (scalar_t__) ;

void ucc_fast_free(struct ucc_fast_private * uccf)
{
 if (!uccf)
  return;

 if (uccf->ucc_fast_tx_virtual_fifo_base_offset)
  qe_muram_free(uccf->ucc_fast_tx_virtual_fifo_base_offset);

 if (uccf->ucc_fast_rx_virtual_fifo_base_offset)
  qe_muram_free(uccf->ucc_fast_rx_virtual_fifo_base_offset);

 if (uccf->uf_regs)
  iounmap(uccf->uf_regs);

 kfree(uccf);
}
