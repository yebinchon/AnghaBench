
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CX86_CCR3 ;
 int ccr3 ;
 scalar_t__ cpu_has_pge ;
 int cr4 ;
 int read_cr0 () ;
 int setCx86 (int ,int ) ;
 int wbinvd () ;
 int write_cr0 (int) ;
 int write_cr4 (int ) ;

__attribute__((used)) static void post_set(void)
{

 wbinvd();


 setCx86(CX86_CCR3, ccr3);


 write_cr0(read_cr0() & 0xbfffffff);


 if (cpu_has_pge)
  write_cr4(cr4);
}
