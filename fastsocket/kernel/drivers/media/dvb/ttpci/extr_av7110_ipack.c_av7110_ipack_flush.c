
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack {int plength; int found; } ;


 int MMAX_PLENGTH ;
 int av7110_ipack_reset (struct ipack*) ;
 int send_ipack (struct ipack*) ;

void av7110_ipack_flush(struct ipack *p)
{
 if (p->plength != MMAX_PLENGTH - 6 || p->found <= 6)
  return;
 p->plength = p->found - 6;
 p->found = 0;
 send_ipack(p);
 av7110_ipack_reset(p);
}
