
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end__mov64 ;
 int paravirt_patch_insns (void*,unsigned int,int ,int ) ;
 int start__mov64 ;

unsigned paravirt_patch_ident_64(void *insnbuf, unsigned len)
{
 return paravirt_patch_insns(insnbuf, len,
        start__mov64, end__mov64);
}
