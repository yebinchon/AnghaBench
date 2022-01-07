
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pgdir; } ;


 int LHCALL_NEW_PGTABLE ;
 int cr3_changed ;
 int lazy_hcall1 (int ,unsigned long) ;
 TYPE_1__ lguest_data ;

__attribute__((used)) static void lguest_write_cr3(unsigned long cr3)
{
 lguest_data.pgdir = cr3;
 lazy_hcall1(LHCALL_NEW_PGTABLE, cr3);
 cr3_changed = 1;
}
