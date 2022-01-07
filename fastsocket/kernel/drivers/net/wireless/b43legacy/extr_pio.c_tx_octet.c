
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43legacy_pioqueue {scalar_t__ need_workarounds; } ;


 int B43legacy_PIO_TXCTL ;
 int B43legacy_PIO_TXCTL_WRITELO ;
 int B43legacy_PIO_TXDATA ;
 int b43legacy_pio_write (struct b43legacy_pioqueue*,int ,int ) ;

__attribute__((used)) static void tx_octet(struct b43legacy_pioqueue *queue,
       u8 octet)
{
 if (queue->need_workarounds) {
  b43legacy_pio_write(queue, B43legacy_PIO_TXDATA, octet);
  b43legacy_pio_write(queue, B43legacy_PIO_TXCTL,
        B43legacy_PIO_TXCTL_WRITELO);
 } else {
  b43legacy_pio_write(queue, B43legacy_PIO_TXCTL,
        B43legacy_PIO_TXCTL_WRITELO);
  b43legacy_pio_write(queue, B43legacy_PIO_TXDATA, octet);
 }
}
