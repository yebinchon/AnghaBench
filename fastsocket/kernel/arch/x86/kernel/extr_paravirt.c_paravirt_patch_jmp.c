
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int opcode; unsigned long delta; } ;



unsigned paravirt_patch_jmp(void *insnbuf, const void *target,
       unsigned long addr, unsigned len)
{
 struct branch *b = insnbuf;
 unsigned long delta = (unsigned long)target - (addr+5);

 if (len < 5)
  return len;

 b->opcode = 0xe9;
 b->delta = delta;

 return 5;
}
