
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getchar () ;
 int gettime () ;
 scalar_t__ kbd_pending () ;

int getchar_timeout(void)
{
 int cnt = 30;
 int t0, t1;

 t0 = gettime();

 while (cnt) {
  if (kbd_pending())
   return getchar();

  t1 = gettime();
  if (t0 != t1) {
   cnt--;
   t0 = t1;
  }
 }

 return 0;
}
