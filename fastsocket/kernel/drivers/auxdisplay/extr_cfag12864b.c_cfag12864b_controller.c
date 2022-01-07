
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfag12864b_setcontrollers (int,int) ;

__attribute__((used)) static void cfag12864b_controller(unsigned char which)
{
 if (which == 0)
  cfag12864b_setcontrollers(1, 0);
 else if (which == 1)
  cfag12864b_setcontrollers(0, 1);
}
