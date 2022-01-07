
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

DItype __ashrdi3(DItype u, word_type b)
{
 union DIunion w;
 union DIunion uu;
 word_type bm;

 if (b == 0)
  return u;

 uu.ll = u;

 bm = (sizeof(SItype) * BITS_PER_UNIT) - b;
 if (bm <= 0) {

  w.s.high = uu.s.high >> (sizeof(SItype) * BITS_PER_UNIT - 1);
  w.s.low = uu.s.high >> -bm;
 } else {
  USItype carries = (USItype)uu.s.high << bm;
  w.s.high = uu.s.high >> b;
  w.s.low = ((USItype)uu.s.low >> b) | carries;
 }

 return w.ll;
}
