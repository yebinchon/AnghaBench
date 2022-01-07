
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int USItype ;
struct TYPE_3__ {int high; scalar_t__ low; } ;
struct TYPE_4__ {void* ll; TYPE_1__ s; } ;
typedef TYPE_2__ DIunion ;
typedef void* DItype ;


 void* __umulsidi3 (scalar_t__,scalar_t__) ;

DItype
__muldi3 (DItype u, DItype v)
{
  DIunion w;
  DIunion uu, vv;

  uu.ll = u,
  vv.ll = v;

  w.ll = __umulsidi3 (uu.s.low, vv.s.low);
  w.s.high += ((USItype) uu.s.low * (USItype) vv.s.high
        + (USItype) uu.s.high * (USItype) vv.s.low);

  return w.ll;
}
