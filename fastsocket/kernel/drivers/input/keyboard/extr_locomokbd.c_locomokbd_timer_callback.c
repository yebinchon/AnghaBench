
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomokbd {int dummy; } ;


 int locomokbd_scankeyboard (struct locomokbd*) ;

__attribute__((used)) static void locomokbd_timer_callback(unsigned long data)
{
 struct locomokbd *locomokbd = (struct locomokbd *) data;

 locomokbd_scankeyboard(locomokbd);
}
