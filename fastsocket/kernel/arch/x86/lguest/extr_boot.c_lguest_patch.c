
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_3__ {unsigned int start; unsigned int end; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* lguest_insns ;
 int memcpy (void*,unsigned int,unsigned int) ;
 int paravirt_patch_default (size_t,int ,void*,unsigned long,unsigned int) ;

__attribute__((used)) static unsigned lguest_patch(u8 type, u16 clobber, void *ibuf,
        unsigned long addr, unsigned len)
{
 unsigned int insn_len;


 if (type >= ARRAY_SIZE(lguest_insns) || !lguest_insns[type].start)
  return paravirt_patch_default(type, clobber, ibuf, addr, len);

 insn_len = lguest_insns[type].end - lguest_insns[type].start;


 if (len < insn_len)
  return paravirt_patch_default(type, clobber, ibuf, addr, len);


 memcpy(ibuf, lguest_insns[type].start, insn_len);
 return insn_len;
}
