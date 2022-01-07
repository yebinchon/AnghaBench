
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned short from64to16(unsigned long x)
{



 union {
  unsigned long ul;
  unsigned int ui[2];
  unsigned short us[4];
 } in_v, tmp_v, out_v;

 in_v.ul = x;
 tmp_v.ul = (unsigned long) in_v.ui[0] + (unsigned long) in_v.ui[1];



 out_v.ul = (unsigned long) tmp_v.us[0] + (unsigned long) tmp_v.us[1]
   + (unsigned long) tmp_v.us[2];


 return out_v.us[0] + out_v.us[1];
}
