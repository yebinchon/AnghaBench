
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_pioqueue {int mmio_base; } ;
struct b43legacy_pio_txpacket {int dummy; } ;






 int B43legacy_WARN_ON (int) ;
 int pio_txpacket_getindex (struct b43legacy_pio_txpacket*) ;

__attribute__((used)) static u16 generate_cookie(struct b43legacy_pioqueue *queue,
      struct b43legacy_pio_txpacket *packet)
{
 u16 cookie = 0x0000;
 int packetindex;





 switch (queue->mmio_base) {
 case 131:
  break;
 case 130:
  cookie = 0x1000;
  break;
 case 129:
  cookie = 0x2000;
  break;
 case 128:
  cookie = 0x3000;
  break;
 default:
  B43legacy_WARN_ON(1);
 }
 packetindex = pio_txpacket_getindex(packet);
 B43legacy_WARN_ON(!(((u16)packetindex & 0xF000) == 0x0000));
 cookie |= (u16)packetindex;

 return cookie;
}
