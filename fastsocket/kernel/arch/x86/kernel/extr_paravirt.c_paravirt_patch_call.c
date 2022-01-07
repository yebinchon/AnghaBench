
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct branch {int opcode; unsigned long delta; } ;


 int BUILD_BUG_ON (int) ;

unsigned paravirt_patch_call(void *insnbuf,
        const void *target, u16 tgt_clobbers,
        unsigned long addr, u16 site_clobbers,
        unsigned len)
{
 struct branch *b = insnbuf;
 unsigned long delta = (unsigned long)target - (addr+5);

 if (tgt_clobbers & ~site_clobbers)
  return len;
 if (len < 5)
  return len;

 b->opcode = 0xe8;
 b->delta = delta;
 BUILD_BUG_ON(sizeof(*b) != 5);

 return 5;
}
