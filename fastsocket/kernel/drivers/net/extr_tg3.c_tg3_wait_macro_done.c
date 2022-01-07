
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int EBUSY ;
 int MII_TG3_DSP_CONTROL ;
 int tg3_readphy (struct tg3*,int ,int*) ;

__attribute__((used)) static int tg3_wait_macro_done(struct tg3 *tp)
{
 int limit = 100;

 while (limit--) {
  u32 tmp32;

  if (!tg3_readphy(tp, MII_TG3_DSP_CONTROL, &tmp32)) {
   if ((tmp32 & 0x1000) == 0)
    break;
  }
 }
 if (limit < 0)
  return -EBUSY;

 return 0;
}
