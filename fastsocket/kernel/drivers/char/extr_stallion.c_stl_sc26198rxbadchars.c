
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int dummy; } ;


 unsigned char CR_CLEARRXERR ;
 int MR1 ;
 unsigned char MR1_ERRBLOCK ;
 int RXFIFO ;
 int SCCR ;
 int SR ;
 unsigned char SR_RXRDY ;
 void* stl_sc26198getreg (struct stlport*,int ) ;
 int stl_sc26198rxbadch (struct stlport*,unsigned char,char) ;
 int stl_sc26198setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_sc26198rxbadchars(struct stlport *portp)
{
 unsigned char status, mr1;
 char ch;





 mr1 = stl_sc26198getreg(portp, MR1);
 stl_sc26198setreg(portp, MR1, (mr1 & ~MR1_ERRBLOCK));

 while ((status = stl_sc26198getreg(portp, SR)) & SR_RXRDY) {
  stl_sc26198setreg(portp, SCCR, CR_CLEARRXERR);
  ch = stl_sc26198getreg(portp, RXFIFO);
  stl_sc26198rxbadch(portp, status, ch);
 }





 stl_sc26198setreg(portp, MR1, mr1);
}
