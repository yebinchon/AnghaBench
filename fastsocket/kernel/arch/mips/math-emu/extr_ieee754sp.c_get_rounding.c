
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rm; } ;






 int SP_MBIT (int) ;
 TYPE_1__ ieee754_csr ;

__attribute__((used)) static unsigned get_rounding(int sn, unsigned xm)
{


 if (xm & (SP_MBIT(3) - 1)) {
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
