
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map_base; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int IA32_PAGE_OFFSET ;
 int PER_LINUX32 ;
 TYPE_2__* current ;
 int set_personality (int ) ;

__attribute__((used)) static void
elf32_set_personality (void)
{
 set_personality(PER_LINUX32);
 current->thread.map_base = IA32_PAGE_OFFSET/3;
}
