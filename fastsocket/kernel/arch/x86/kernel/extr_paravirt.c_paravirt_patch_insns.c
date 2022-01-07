
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,char const*,unsigned int) ;

unsigned paravirt_patch_insns(void *insnbuf, unsigned len,
         const char *start, const char *end)
{
 unsigned insn_len = end - start;

 if (insn_len > len || start == ((void*)0))
  insn_len = len;
 else
  memcpy(insnbuf, start, insn_len);

 return insn_len;
}
