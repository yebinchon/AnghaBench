
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cfag12864b_isset (unsigned char,unsigned char) ;
 int cfag12864b_set (unsigned char,unsigned char) ;
 int cfag12864b_unset (unsigned char,unsigned char) ;

__attribute__((used)) static void cfag12864b_not(unsigned char x, unsigned char y)
{
 if (cfag12864b_isset(x, y))
  cfag12864b_unset(x, y);
 else
  cfag12864b_set(x, y);
}
