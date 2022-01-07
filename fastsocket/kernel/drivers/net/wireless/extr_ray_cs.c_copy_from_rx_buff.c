
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rmem; } ;
typedef TYPE_1__ ray_dev_t ;
typedef int UCHAR ;


 int RX_BUFF_END ;
 int memcpy_fromio (int *,scalar_t__,int) ;

__attribute__((used)) static int copy_from_rx_buff(ray_dev_t *local, UCHAR *dest, int pkt_addr,
        int length)
{
 int wrap_bytes = (pkt_addr + length) - (RX_BUFF_END + 1);
 if (wrap_bytes <= 0) {
  memcpy_fromio(dest, local->rmem + pkt_addr, length);
 } else {

  memcpy_fromio(dest, local->rmem + pkt_addr,
         length - wrap_bytes);
  memcpy_fromio(dest + length - wrap_bytes, local->rmem,
         wrap_bytes);
 }
 return length;
}
