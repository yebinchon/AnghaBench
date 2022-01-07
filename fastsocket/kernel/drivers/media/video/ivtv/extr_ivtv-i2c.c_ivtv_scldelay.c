
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int ivtv_getscl (struct ivtv*) ;

__attribute__((used)) static void ivtv_scldelay(struct ivtv *itv)
{
 int i;

 for (i = 0; i < 5; ++i)
  ivtv_getscl(itv);
}
