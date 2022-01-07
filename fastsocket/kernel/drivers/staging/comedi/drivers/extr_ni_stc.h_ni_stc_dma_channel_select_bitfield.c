
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;

__attribute__((used)) static inline unsigned ni_stc_dma_channel_select_bitfield(unsigned channel)
{
 if (channel < 4)
  return 1 << channel;
 if (channel == 4)
  return 0x3;
 if (channel == 5)
  return 0x5;
 BUG();
 return 0;
}
