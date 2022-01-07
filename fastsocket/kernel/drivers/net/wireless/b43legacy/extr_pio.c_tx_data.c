
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_pioqueue {scalar_t__ need_workarounds; } ;


 int B43legacy_PIO_TXCTL ;
 int B43legacy_PIO_TXCTL_WRITEHI ;
 int B43legacy_PIO_TXCTL_WRITELO ;
 int B43legacy_PIO_TXDATA ;
 int b43legacy_pio_write (struct b43legacy_pioqueue*,int ,int) ;
 int tx_get_next_word (int *,int const*,int,unsigned int*) ;
 int tx_octet (struct b43legacy_pioqueue*,int const) ;

__attribute__((used)) static void tx_data(struct b43legacy_pioqueue *queue,
      u8 *txhdr,
      const u8 *packet,
      unsigned int octets)
{
 u16 data;
 unsigned int i = 0;

 if (queue->need_workarounds) {
  data = tx_get_next_word(txhdr, packet,
     sizeof(struct b43legacy_txhdr_fw3), &i);
  b43legacy_pio_write(queue, B43legacy_PIO_TXDATA, data);
 }
 b43legacy_pio_write(queue, B43legacy_PIO_TXCTL,
       B43legacy_PIO_TXCTL_WRITELO |
       B43legacy_PIO_TXCTL_WRITEHI);
 while (i < octets - 1) {
  data = tx_get_next_word(txhdr, packet,
     sizeof(struct b43legacy_txhdr_fw3), &i);
  b43legacy_pio_write(queue, B43legacy_PIO_TXDATA, data);
 }
 if (octets % 2)
  tx_octet(queue, packet[octets -
    sizeof(struct b43legacy_txhdr_fw3) - 1]);
}
