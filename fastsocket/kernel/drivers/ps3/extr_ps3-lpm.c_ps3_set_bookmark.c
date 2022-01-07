
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPRN_BKMK ;
 int mtspr (int ,int ) ;

void ps3_set_bookmark(u64 bookmark)
{







 asm volatile("nop;nop;nop;nop;nop;nop;nop;nop;nop;");
 mtspr(SPRN_BKMK, bookmark);
 asm volatile("nop;nop;nop;nop;nop;nop;nop;nop;nop;");
}
