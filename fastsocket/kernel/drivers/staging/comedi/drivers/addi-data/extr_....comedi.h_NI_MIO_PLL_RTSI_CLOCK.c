
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_MIO_PLL_RTSI0_CLOCK ;

__attribute__((used)) static inline unsigned NI_MIO_PLL_RTSI_CLOCK(unsigned rtsi_channel) {
  return NI_MIO_PLL_RTSI0_CLOCK + rtsi_channel;
 }
