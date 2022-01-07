
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EFLG_CF ;
 unsigned int EFLG_OF ;
 unsigned int EFLG_PF ;
 unsigned int EFLG_SF ;
 unsigned int EFLG_ZF ;

__attribute__((used)) static int test_cc(unsigned int condition, unsigned int flags)
{
 int rc = 0;

 switch ((condition & 15) >> 1) {
 case 0:
  rc |= (flags & EFLG_OF);
  break;
 case 1:
  rc |= (flags & EFLG_CF);
  break;
 case 2:
  rc |= (flags & EFLG_ZF);
  break;
 case 3:
  rc |= (flags & (EFLG_CF|EFLG_ZF));
  break;
 case 4:
  rc |= (flags & EFLG_SF);
  break;
 case 5:
  rc |= (flags & EFLG_PF);
  break;
 case 7:
  rc |= (flags & EFLG_ZF);

 case 6:
  rc |= (!(flags & EFLG_SF) != !(flags & EFLG_OF));
  break;
 }


 return (!!rc ^ (condition & 1));
}
