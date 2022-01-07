
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ L1_CODE_LENGTH ;
 scalar_t__ L1_CODE_START ;
 int pr_err (char*,void const*,size_t) ;
 int show_stack (int *,int *) ;

__attribute__((used)) static bool isram_check_addr(const void *addr, size_t n)
{
 if ((addr >= (void *)L1_CODE_START) &&
     (addr < (void *)(L1_CODE_START + L1_CODE_LENGTH))) {
  if ((addr + n) > (void *)(L1_CODE_START + L1_CODE_LENGTH)) {
   show_stack(((void*)0), ((void*)0));
   pr_err("copy involving %p length (%zu) too long\n", addr, n);
  }
  return 1;
 }
 return 0;
}
