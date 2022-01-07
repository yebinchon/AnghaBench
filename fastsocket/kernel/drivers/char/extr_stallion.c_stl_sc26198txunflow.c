
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct stlport {int istate; } ;


 int ASYI_TXFLOWED ;
 unsigned char CR_HOSTXON ;
 int MR0 ;
 unsigned char MR0_SWFRXTX ;
 int SCCR ;
 int clear_bit (int ,int *) ;
 unsigned char stl_sc26198getreg (struct stlport*,int ) ;
 int stl_sc26198setreg (struct stlport*,int ,unsigned char) ;
 int stl_sc26198wait (struct stlport*) ;

__attribute__((used)) static void stl_sc26198txunflow(struct stlport *portp, struct tty_struct *tty)
{
 unsigned char mr0;

 mr0 = stl_sc26198getreg(portp, MR0);
 stl_sc26198setreg(portp, MR0, (mr0 & ~MR0_SWFRXTX));
 stl_sc26198setreg(portp, SCCR, CR_HOSTXON);
 stl_sc26198wait(portp);
 stl_sc26198setreg(portp, MR0, mr0);
 clear_bit(ASYI_TXFLOWED, &portp->istate);
}
