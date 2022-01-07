
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
 int SUPP_REG_WR (int,long) ;
 long bp_owner ;

__attribute__((used)) static int put_debugreg(long pid, unsigned int regno, long data)
{
 int ret = 0;
 register int old_srs;
 if (!bp_owner)
  bp_owner = pid;
 else if (bp_owner != pid) {


  return (data == 0) ? ret : -1;
 }


 SPEC_REG_RD(SPEC_REG_SRS, old_srs);

 SUPP_BANK_SEL(BANK_BP);

 switch (regno - PT_BP) {
 case 0:
  SUPP_REG_WR(0, data); break;
 case 1:
 case 2:
  if (data)
   ret = -1;
  break;
 case 3:
  SUPP_REG_WR(3, data); break;
 case 4:
  SUPP_REG_WR(4, data); break;
 case 5:
  SUPP_REG_WR(5, data); break;
 case 6:
  SUPP_REG_WR(6, data); break;
 case 7:
  SUPP_REG_WR(7, data); break;
 case 8:
  SUPP_REG_WR(8, data); break;
 case 9:
  SUPP_REG_WR(9, data); break;
 case 10:
  SUPP_REG_WR(10, data); break;
 case 11:
  SUPP_REG_WR(11, data); break;
 case 12:
  SUPP_REG_WR(12, data); break;
 case 13:
  SUPP_REG_WR(13, data); break;
 case 14:
  SUPP_REG_WR(14, data); break;
 default:
  ret = -1;
  break;
 }


 SPEC_REG_WR(SPEC_REG_SRS, old_srs);

 NOP();
 NOP();
 NOP();

 return ret;
}
