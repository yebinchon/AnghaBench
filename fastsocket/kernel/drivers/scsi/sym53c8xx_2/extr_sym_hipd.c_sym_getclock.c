
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {unsigned char sv_scntl3; unsigned char sv_stest1; int multiplier; unsigned int clock_khz; } ;


 unsigned char DBLEN ;
 unsigned char DBLSEL ;
 int OUTB (struct sym_hcb*,int ,int ) ;
 int nc_stest1 ;
 int printf (char*,char*,...) ;
 unsigned int sym_getfreq (struct sym_hcb*) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_verbose ;

__attribute__((used)) static void sym_getclock (struct sym_hcb *np, int mult)
{
 unsigned char scntl3 = np->sv_scntl3;
 unsigned char stest1 = np->sv_stest1;
 unsigned f1;

 np->multiplier = 1;
 f1 = 40000;



 if (mult > 1 && (stest1 & (DBLEN+DBLSEL)) == DBLEN+DBLSEL) {
  if (sym_verbose >= 2)
   printf ("%s: clock multiplier found\n", sym_name(np));
  np->multiplier = mult;
 }






 if (np->multiplier != mult || (scntl3 & 7) < 3 || !(scntl3 & 1)) {
  OUTB(np, nc_stest1, 0);
  f1 = sym_getfreq (np);

  if (sym_verbose)
   printf ("%s: chip clock is %uKHz\n", sym_name(np), f1);

  if (f1 < 45000) f1 = 40000;
  else if (f1 < 55000) f1 = 50000;
  else f1 = 80000;

  if (f1 < 80000 && mult > 1) {
   if (sym_verbose >= 2)
    printf ("%s: clock multiplier assumed\n",
     sym_name(np));
   np->multiplier = mult;
  }
 } else {
  if ((scntl3 & 7) == 3) f1 = 40000;
  else if ((scntl3 & 7) == 5) f1 = 80000;
  else f1 = 160000;

  f1 /= np->multiplier;
 }




 f1 *= np->multiplier;
 np->clock_khz = f1;
}
