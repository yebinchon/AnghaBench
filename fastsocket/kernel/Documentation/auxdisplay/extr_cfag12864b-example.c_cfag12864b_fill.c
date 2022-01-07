
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short CFAG12864B_SIZE ;
 int* cfag12864b_buffer ;

__attribute__((used)) static void cfag12864b_fill(void)
{
 unsigned short i;

 for (i = 0; i < CFAG12864B_SIZE; i++)
  cfag12864b_buffer[i] = 0xFF;
}
