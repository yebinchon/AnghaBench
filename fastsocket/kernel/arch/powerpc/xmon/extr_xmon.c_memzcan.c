
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int mdest ;
 unsigned int mlim ;
 int mread (unsigned int,unsigned char*,int) ;
 unsigned int mskip ;
 int printf (char*,unsigned int) ;
 int scanhex (unsigned int*) ;
 char termch ;

__attribute__((used)) static void
memzcan(void)
{
 unsigned char v;
 unsigned a;
 int ok, ook;

 scanhex(&mdest);
 if (termch != '\n') termch = 0;
 scanhex(&mskip);
 if (termch != '\n') termch = 0;
 scanhex(&mlim);
 ook = 0;
 for (a = mdest; a < mlim; a += mskip) {
  ok = mread(a, &v, 1);
  if (ok && !ook) {
   printf("%.8x .. ", a);
  } else if (!ok && ook)
   printf("%.8x\n", a - mskip);
  ook = ok;
  if (a + mskip < a)
   break;
 }
 if (ook)
  printf("%.8x\n", a - mskip);
}
