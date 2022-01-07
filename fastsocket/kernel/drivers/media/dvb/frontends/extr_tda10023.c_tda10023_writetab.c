
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda10023_state {int dummy; } ;


 int msleep (int) ;
 int tda10023_writebit (struct tda10023_state*,int,int,int) ;

__attribute__((used)) static void tda10023_writetab(struct tda10023_state* state, u8* tab)
{
 u8 r,m,v;
 while (1) {
  r=*tab++;
  m=*tab++;
  v=*tab++;
  if (r==0xff) {
   if (m==0xff)
    break;
   else
    msleep(m);
  }
  else
   tda10023_writebit(state,r,m,v);
 }
}
