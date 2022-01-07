
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;


 int MODR ;
 int msleep (int) ;

__attribute__((used)) static void wm97xx_acc_pen_up(struct wm97xx *wm)
{
 int i;

 msleep(1);

 for (i = 0; i < 16; i++)
  MODR;
}
