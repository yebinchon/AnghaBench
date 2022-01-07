
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long get_3_3_div(unsigned long in)
{
 return (((in >> 3) & 0x7) + 1) * ((in & 0x7) + 1);
}
