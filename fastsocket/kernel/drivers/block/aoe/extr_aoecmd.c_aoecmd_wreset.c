
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {int maxout; int ssthresh; int nframes; int next_cwnd; } ;



void
aoecmd_wreset(struct aoetgt *t)
{
 t->maxout = 1;
 t->ssthresh = t->nframes / 2;
 t->next_cwnd = t->nframes;
}
