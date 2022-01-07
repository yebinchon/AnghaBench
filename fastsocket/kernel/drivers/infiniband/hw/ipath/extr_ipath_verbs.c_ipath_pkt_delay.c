
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static inline unsigned ipath_pkt_delay(u32 plen, u8 snd_mult, u8 rcv_mult)
{
 return (rcv_mult > snd_mult) ?
  (plen * (rcv_mult - snd_mult) + 1) >> 1 : 0;
}
