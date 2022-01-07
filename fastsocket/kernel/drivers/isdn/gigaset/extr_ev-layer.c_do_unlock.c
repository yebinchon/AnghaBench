
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {scalar_t__ mstate; scalar_t__ connected; int mode; } ;


 int EINVAL ;
 int MS_INIT ;
 scalar_t__ MS_LOCKED ;
 scalar_t__ MS_UNINITIALIZED ;
 int M_UNKNOWN ;
 int gigaset_free_channels (struct cardstate*) ;
 int schedule_init (struct cardstate*,int ) ;

__attribute__((used)) static int do_unlock(struct cardstate *cs)
{
 if (cs->mstate != MS_LOCKED)
  return -EINVAL;

 cs->mstate = MS_UNINITIALIZED;
 cs->mode = M_UNKNOWN;
 gigaset_free_channels(cs);
 if (cs->connected)
  schedule_init(cs, MS_INIT);

 return 0;
}
