
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {scalar_t__ maxout; scalar_t__ nframes; scalar_t__ ssthresh; scalar_t__ nout; scalar_t__ next_cwnd; } ;
struct aoedev {long rttavg; long rttdev; } ;


 long RTTDSCALE ;
 long RTTSCALE ;

__attribute__((used)) static void
calc_rttavg(struct aoedev *d, struct aoetgt *t, int rtt)
{
 register long n;

 n = rtt;


 n -= d->rttavg >> RTTSCALE;
 d->rttavg += n;
 if (n < 0)
  n = -n;
 n -= d->rttdev >> RTTDSCALE;
 d->rttdev += n;

 if (!t || t->maxout >= t->nframes)
  return;
 if (t->maxout < t->ssthresh)
  t->maxout += 1;
 else if (t->nout == t->maxout && t->next_cwnd-- == 0) {
  t->maxout += 1;
  t->next_cwnd = t->maxout;
 }
}
