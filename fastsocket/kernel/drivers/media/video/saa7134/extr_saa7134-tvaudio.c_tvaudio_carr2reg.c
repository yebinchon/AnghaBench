
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;

__attribute__((used)) static u32 tvaudio_carr2reg(u32 carrier)
{
 u64 a = carrier;

 a <<= 24;
 do_div(a,12288);
 return a;
}
