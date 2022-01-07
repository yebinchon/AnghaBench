
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end__mov32 ;
 int paravirt_patch_insns (void*,unsigned int,int ,int ) ;
 int start__mov32 ;

unsigned paravirt_patch_ident_32(void *insnbuf, unsigned len)
{
 return paravirt_patch_insns(insnbuf, len,
        start__mov32, end__mov32);
}
