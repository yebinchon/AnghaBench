
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int hweight32 (int ) ;

__attribute__((used)) static int make_even_parity(u32 x)
{
 return hweight32(x) & 1;
}
