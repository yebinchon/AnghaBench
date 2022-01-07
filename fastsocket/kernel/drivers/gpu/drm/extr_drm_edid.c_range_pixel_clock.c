
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct edid {int revision; } ;



__attribute__((used)) static u32
range_pixel_clock(struct edid *edid, u8 *t)
{

 if (t[9] == 0 || t[9] == 255)
  return 0;


 if (edid->revision >= 4 && t[10] == 0x04)
  return (t[9] * 10000) - ((t[12] >> 2) * 250);


 return t[9] * 10000 + 5001;
}
