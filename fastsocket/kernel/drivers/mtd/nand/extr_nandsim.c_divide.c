
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int do_div (int ,int ) ;

__attribute__((used)) static uint64_t divide(uint64_t n, uint32_t d)
{
 do_div(n, d);
 return n;
}
