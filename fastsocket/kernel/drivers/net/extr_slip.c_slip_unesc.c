
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int rcount; scalar_t__ buffsize; unsigned char* rbuff; int flags; int rx_over_errors; } ;






 int SLF_ERROR ;
 int SLF_ESCAPE ;
 int SLF_KEEPTEST ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int sl_bump (struct slip*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void slip_unesc(struct slip *sl, unsigned char s)
{

 switch (s) {
 case 131:






  if (!test_and_clear_bit(SLF_ERROR, &sl->flags)
       && (sl->rcount > 2))
   sl_bump(sl);
  clear_bit(SLF_ESCAPE, &sl->flags);
  sl->rcount = 0;
  return;

 case 130:
  set_bit(SLF_ESCAPE, &sl->flags);
  return;
 case 128:
  if (test_and_clear_bit(SLF_ESCAPE, &sl->flags))
   s = 130;
  break;
 case 129:
  if (test_and_clear_bit(SLF_ESCAPE, &sl->flags))
   s = 131;
  break;
 }
 if (!test_bit(SLF_ERROR, &sl->flags)) {
  if (sl->rcount < sl->buffsize) {
   sl->rbuff[sl->rcount++] = s;
   return;
  }
  sl->rx_over_errors++;
  set_bit(SLF_ERROR, &sl->flags);
 }
}
