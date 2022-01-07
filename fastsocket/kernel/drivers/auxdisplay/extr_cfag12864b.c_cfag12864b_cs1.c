
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFAG12864B_BIT_CS1 ;
 int cfag12864b_setbit (unsigned char,int ) ;

__attribute__((used)) static void cfag12864b_cs1(unsigned char state)
{
 cfag12864b_setbit(state, CFAG12864B_BIT_CS1);
}
