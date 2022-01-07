
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_info; } ;
typedef TYPE_1__ Elf_Rela ;


 int ELF32_R_TYPE (int ) ;



__attribute__((used)) static inline unsigned long count_stubs(const Elf_Rela *rela, unsigned long n)
{
 unsigned long cnt = 0;

 for (; n > 0; n--, rela++)
 {
  switch (ELF32_R_TYPE(rela->r_info)) {
   case 129:
   case 128:
    cnt++;
  }
 }

 return cnt;
}
