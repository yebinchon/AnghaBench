
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int csr; scalar_t__ cardtype; int port; } ;
typedef TYPE_1__ avmcard ;


 int AMCC_INTCSR ;
 int AMCC_MCSR ;
 int AMCC_RXLEN ;
 int AMCC_TXLEN ;
 scalar_t__ avm_t1pci ;
 int b1dma_writel (TYPE_1__*,int,int ) ;
 int mdelay (int) ;
 int t1outp (int ,int,int) ;

void b1dma_reset(avmcard *card)
{
 card->csr = 0x0;
 b1dma_writel(card, card->csr, AMCC_INTCSR);
 b1dma_writel(card, 0, AMCC_MCSR);
 b1dma_writel(card, 0, AMCC_RXLEN);
 b1dma_writel(card, 0, AMCC_TXLEN);

 t1outp(card->port, 0x10, 0x00);
 t1outp(card->port, 0x07, 0x00);

 b1dma_writel(card, 0, AMCC_MCSR);
 mdelay(10);
 b1dma_writel(card, 0x0f000000, AMCC_MCSR);
 mdelay(10);
 b1dma_writel(card, 0, AMCC_MCSR);
 if (card->cardtype == avm_t1pci)
  mdelay(42);
 else
  mdelay(10);
}
