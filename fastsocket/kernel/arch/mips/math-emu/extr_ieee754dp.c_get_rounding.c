
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rm; } ;


 int DP_MBIT (int) ;




 TYPE_1__ ieee754_csr ;

__attribute__((used)) static u64 get_rounding(int sn, u64 xm)
{


 if (xm & (DP_MBIT(3) - 1)) {
  switch (ieee754_csr.rm) {
  case 128:
   break;
  case 130:
   xm += 0x3 + ((xm >> 3) & 1);

   break;
  case 129:
   if (!sn)
    xm += 0x8;
   break;
  case 131:
   if (sn)
    xm += 0x8;
   break;
  }
 }
 return xm;
}
