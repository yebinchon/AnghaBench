
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_CR4_PCE ;
 int clear_in_cr4 (int ) ;
 int set_in_cr4 (int ) ;

__attribute__((used)) static void change_rdpmc(void *info)
{
 bool enable = !!(unsigned long)info;

 if (enable)
  set_in_cr4(X86_CR4_PCE);
 else
  clear_in_cr4(X86_CR4_PCE);
}
