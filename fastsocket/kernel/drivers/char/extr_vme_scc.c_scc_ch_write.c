
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BVME_SCC_A_ADDR ;
 scalar_t__ M147_SCC_A_ADDR ;
 scalar_t__ MACH_IS_BVME6000 ;
 scalar_t__ MACH_IS_MVME147 ;
 scalar_t__ MACH_IS_MVME16x ;
 scalar_t__ MVME_SCC_A_ADDR ;
 int scc_delay () ;

__attribute__((used)) static void scc_ch_write (char ch)
{
 volatile char *p = ((void*)0);
 do {
  scc_delay();
 }
 while (!(*p & 4));
 scc_delay();
 *p = 8;
 scc_delay();
 *p = ch;
}
