
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bridge_base ;
 int c2k_bridge_setup (int ) ;
 int mv64x60_get_mem_size (int ) ;

__attribute__((used)) static void c2k_fixups(void)
{
 u32 mem_size;

 mem_size = mv64x60_get_mem_size(bridge_base);
 c2k_bridge_setup(mem_size);
}
