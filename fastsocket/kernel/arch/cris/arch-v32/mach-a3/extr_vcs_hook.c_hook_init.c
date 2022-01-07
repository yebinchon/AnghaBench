
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOOK_MEM_BASE_ADDR ;
 int hook_base ;
 int ioremap (int ,int) ;

__attribute__((used)) static void hook_init(void)
{
 static int first = 1;
 if (first) {
  first = 0;
  hook_base = ioremap(HOOK_MEM_BASE_ADDR, 8192);
 }
}
