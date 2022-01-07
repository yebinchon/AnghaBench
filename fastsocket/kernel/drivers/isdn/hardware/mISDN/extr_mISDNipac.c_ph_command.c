
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isac_hw {int type; int name; } ;


 int IPAC_TYPE_ISACX ;
 int ISACX_CIX0 ;
 int ISAC_CIX0 ;
 int WriteISAC (struct isac_hw*,int ,int) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static inline void
ph_command(struct isac_hw *isac, u8 command)
{
 pr_debug("%s: ph_command %x\n", isac->name, command);
 if (isac->type & IPAC_TYPE_ISACX)
  WriteISAC(isac, ISACX_CIX0, (command << 4) | 0xE);
 else
  WriteISAC(isac, ISAC_CIX0, (command << 2) | 3);
}
