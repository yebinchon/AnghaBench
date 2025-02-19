
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_pio_txqueue {int rev; } ;


 int B43_PIO8_TXCTL ;
 int B43_PIO8_TXCTL_SUSPREQ ;
 int B43_PIO_TXCTL ;
 int B43_PIO_TXCTL_SUSPREQ ;
 int b43_piotx_read16 (struct b43_pio_txqueue*,int ) ;
 int b43_piotx_read32 (struct b43_pio_txqueue*,int ) ;
 int b43_piotx_write16 (struct b43_pio_txqueue*,int ,int) ;
 int b43_piotx_write32 (struct b43_pio_txqueue*,int ,int) ;

__attribute__((used)) static void b43_pio_tx_suspend_queue(struct b43_pio_txqueue *q)
{
 if (q->rev >= 8) {
  b43_piotx_write32(q, B43_PIO8_TXCTL,
      b43_piotx_read32(q, B43_PIO8_TXCTL)
      | B43_PIO8_TXCTL_SUSPREQ);
 } else {
  b43_piotx_write16(q, B43_PIO_TXCTL,
      b43_piotx_read16(q, B43_PIO_TXCTL)
      | B43_PIO_TXCTL_SUSPREQ);
 }
}
