
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned NI_USUAL_RTSI_SELECT(unsigned rtsi_channel) {
  if (rtsi_channel < 7)
   return 0xb + rtsi_channel;
  else
   return 0x1b;
 }
