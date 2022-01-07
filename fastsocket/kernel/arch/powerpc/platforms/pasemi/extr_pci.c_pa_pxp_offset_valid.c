
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static inline int pa_pxp_offset_valid(u8 bus, u8 devfn, int offset)
{




 if (bus == 0 && devfn == 0)
  return offset < 8192;
 else
  return offset < 4096;
}
