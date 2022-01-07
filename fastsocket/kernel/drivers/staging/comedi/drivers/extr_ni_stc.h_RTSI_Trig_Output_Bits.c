
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned RTSI_Trig_Output_Bits(unsigned rtsi_channel,
          unsigned source)
{
 return (source & 0xf) << ((rtsi_channel % 4) * 4);
}
