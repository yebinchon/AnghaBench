
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;


 int gameport_trigger (struct gameport*) ;
 int mdelay (int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static void adi_init_digital(struct gameport *gameport)
{
 int seq[] = { 4, -2, -3, 10, -6, -11, -7, -9, 11, 0 };
 int i;

 for (i = 0; seq[i]; i++) {
  gameport_trigger(gameport);
  if (seq[i] > 0)
   msleep(seq[i]);
  if (seq[i] < 0) {
   mdelay(-seq[i]);
   udelay(-seq[i]*14);
  }
 }
}
