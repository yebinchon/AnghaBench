
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sector_t ;


 int sector_div (int ,int ) ;

__attribute__((used)) static bool is_factor(sector_t block_size, uint32_t n)
{
 return !sector_div(block_size, n);
}
