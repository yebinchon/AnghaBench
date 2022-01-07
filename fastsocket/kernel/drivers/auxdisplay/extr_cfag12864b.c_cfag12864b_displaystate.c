
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfag12864b_di (int ) ;
 int cfag12864b_e (int) ;
 int ks0108_displaystate (unsigned char) ;

__attribute__((used)) static void cfag12864b_displaystate(unsigned char state)
{
 cfag12864b_di(0);
 cfag12864b_e(1);
 ks0108_displaystate(state);
 cfag12864b_e(0);
}
