
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ilog2 (int) ;

__attribute__((used)) static u32 scu_dif_bytes(u32 len, u32 sector_size)
{
 return (len >> ilog2(sector_size)) * 8;
}
