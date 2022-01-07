
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BANK_BP ;
 int NOP () ;
 unsigned int PT_BP ;
 int SPEC_REG_RD (int ,int) ;
 int SPEC_REG_SRS ;
 int SPEC_REG_WR (int ,int) ;
 int SUPP_BANK_SEL (int ) ;
 int SUPP_REG_RD (int,long) ;
 long bp_owner ;

__attribute__((used)) static long get_debugreg(long pid, unsigned int regno)
{
 register int old_srs;
 register long data;

 if (pid != bp_owner) {
  return 0;
 }


 SPEC_REG_RD(SPEC_REG_SRS, old_srs);

 SUPP_BANK_SEL(BANK_BP);

 switch (regno - PT_BP) {
 case 0:
  SUPP_REG_RD(0, data); break;
 case 1:
 case 2:

  data = 0;
  break;
 case 3:
  SUPP_REG_RD(3, data); break;
 case 4:
  SUPP_REG_RD(4, data); break;
 case 5:
  SUPP_REG_RD(5, data); break;
 case 6:
  SUPP_REG_RD(6, data); break;
 case 7:
  SUPP_REG_RD(7, data); break;
 case 8:
  SUPP_REG_RD(8, data); break;
 case 9:
  SUPP_REG_RD(9, data); break;
 case 10:
  SUPP_REG_RD(10, data); break;
 case 11:
  SUPP_REG_RD(11, data); break;
 case 12:
  SUPP_REG_RD(12, data); break;
 case 13:
  SUPP_REG_RD(13, data); break;
 case 14:
  SUPP_REG_RD(14, data); break;
 default:

  data = 0;
 }


 SPEC_REG_WR(SPEC_REG_SRS, old_srs);

 NOP();
 NOP();
 NOP();

 return data;
}
