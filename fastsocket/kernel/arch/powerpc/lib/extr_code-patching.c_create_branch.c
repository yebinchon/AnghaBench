
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BRANCH_ABSOLUTE ;

unsigned int create_branch(const unsigned int *addr,
      unsigned long target, int flags)
{
 unsigned int instruction;
 long offset;

 offset = target;
 if (! (flags & BRANCH_ABSOLUTE))
  offset = offset - (unsigned long)addr;


 if (offset < -0x2000000 || offset > 0x1fffffc || offset & 0x3)
  return 0;


 instruction = 0x48000000 | (flags & 0x3) | (offset & 0x03FFFFFC);

 return instruction;
}
