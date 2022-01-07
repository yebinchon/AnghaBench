
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int word_type ;
struct TYPE_2__ {int high; int low; } ;
union DIunion {int ll; TYPE_1__ s; } ;
typedef int USItype ;
typedef int SItype ;
typedef int DItype ;


 int BITS_PER_UNIT ;

DItype __lshrdi3(DItype u, word_type b)
{
 union DIunion w;
 word_type bm;
 union DIunion uu;

 if (b == 0)
  return u;

 uu.ll = u;

 bm = (sizeof(SItype) * BITS_PER_UNIT) - b;
 if (bm <= 0) {
  w.s.high = 0;
  w.s.low = (USItype) uu.s.high >> -bm;
 } else {
  USItype carries = (USItype) uu.s.high << bm;
  w.s.high = (USItype) uu.s.high >> b;
  w.s.low = ((USItype) uu.s.low >> b) | carries;
 }

 return w.ll;
}
