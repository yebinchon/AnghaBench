
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CPU_FTR_LWSYNC ;
 int PPC_INST_LWSYNC ;
 int patch_instruction (unsigned int*,int ) ;

void do_lwsync_fixups(unsigned long value, void *fixup_start, void *fixup_end)
{
 unsigned int *start, *end, *dest;

 if (!(value & CPU_FTR_LWSYNC))
  return ;

 start = fixup_start;
 end = fixup_end;

 for (; start < end; start++) {
  dest = (void *)start + *start;
  patch_instruction(dest, PPC_INST_LWSYNC);
 }
}
