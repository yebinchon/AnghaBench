
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tboot_size; int tboot_base; } ;


 int PAGE_SHIFT ;
 int PFN_DOWN (int ) ;
 int PFN_UP (int ) ;
 scalar_t__ map_tboot_pages (int,int,int) ;
 int panic (char*,int,int) ;
 TYPE_1__* tboot ;

__attribute__((used)) static void tboot_create_trampoline(void)
{
 u32 map_base, map_size;


 map_base = PFN_DOWN(tboot->tboot_base);
 map_size = PFN_UP(tboot->tboot_size);
 if (map_tboot_pages(map_base << PAGE_SHIFT, map_base, map_size))
  panic("tboot: Error mapping tboot pages (mfns) @ 0x%x, 0x%x\n",
        map_base, map_size);
}
