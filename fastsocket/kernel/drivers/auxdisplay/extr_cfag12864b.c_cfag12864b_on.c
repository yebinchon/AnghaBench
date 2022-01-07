
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfag12864b_displaystate (int) ;
 int cfag12864b_setcontrollers (int,int) ;

__attribute__((used)) static void cfag12864b_on(void)
{
 cfag12864b_setcontrollers(1, 1);
 cfag12864b_displaystate(1);
}
