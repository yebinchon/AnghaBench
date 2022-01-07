
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int ivtv_getscl (struct ivtv*) ;
 int ivtv_scldelay (struct ivtv*) ;

__attribute__((used)) static int ivtv_waitscl(struct ivtv *itv, int val)
{
 int i;

 ivtv_scldelay(itv);
 for (i = 0; i < 1000; ++i) {
  if (ivtv_getscl(itv) == val)
   return 1;
 }
 return 0;
}
