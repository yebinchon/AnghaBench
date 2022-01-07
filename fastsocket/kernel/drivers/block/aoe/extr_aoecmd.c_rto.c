
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoedev {int rttavg; int rttdev; } ;


 int RTTDSCALE ;
 int RTTSCALE ;

__attribute__((used)) static long
rto(struct aoedev *d)
{
 long t;

 t = 2 * d->rttavg >> RTTSCALE;
 t += 8 * d->rttdev >> RTTDSCALE;
 if (t == 0)
  t = 1;

 return t;
}
