
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 DIV_TO_REG(long val)
{
 return val==8 ? 3 : val==4 ? 2 : val==1 ? 0 : 1;
}
