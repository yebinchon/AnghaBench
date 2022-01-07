
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int memset (int*,int ,int) ;
 int of_read_number (int*,int) ;

__attribute__((used)) static int of_bus_default_translate(u32 *addr, u64 offset, int na)
{
 u64 a = of_read_number(addr, na);
 memset(addr, 0, na * 4);
 a += offset;
 if (na > 1)
  addr[na - 2] = a >> 32;
 addr[na - 1] = a & 0xffffffffu;

 return 0;
}
