
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smpfunc_t ;


 scalar_t__ BTFIXUP_CALL (int (*) (unsigned long)) ;
 int local_flush_page_to_ram (unsigned long) ;
 int xc1 (int ,unsigned long) ;

void smp_flush_page_to_ram(unsigned long page)
{







 xc1((smpfunc_t) BTFIXUP_CALL(local_flush_page_to_ram), page);

 local_flush_page_to_ram(page);
}
