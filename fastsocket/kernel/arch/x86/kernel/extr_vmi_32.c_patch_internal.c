
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vmi_relocation_info {int type; scalar_t__ eip; } ;


 int BUG () ;
 int BUG_ON (int) ;
 char MNEM_CALL ;
 char MNEM_JMP ;




 int call_vrom_long_func (int ,int ,int) ;
 int get_reloc ;
 int patch_offset (void*,unsigned long,unsigned long) ;
 int vmi_rom ;

__attribute__((used)) static unsigned patch_internal(int call, unsigned len, void *insnbuf,
          unsigned long ip)
{
 u64 reloc;
 struct vmi_relocation_info *const rel = (struct vmi_relocation_info *)&reloc;
 reloc = call_vrom_long_func(vmi_rom, get_reloc, call);
 switch(rel->type) {
  case 131:
   BUG_ON(len < 5);
   *(char *)insnbuf = MNEM_CALL;
   patch_offset(insnbuf, ip, (unsigned long)rel->eip);
   return 5;

  case 130:
   BUG_ON(len < 5);
   *(char *)insnbuf = MNEM_JMP;
   patch_offset(insnbuf, ip, (unsigned long)rel->eip);
   return 5;

  case 128:

   return 0;

  case 129:

   break;

  default:
   BUG();
 }
 return len;
}
