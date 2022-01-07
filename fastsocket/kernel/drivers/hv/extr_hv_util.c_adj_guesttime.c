
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct adj_time_work {int work; int host_time; } ;
typedef scalar_t__ s32 ;


 int GFP_ATOMIC ;
 int ICTIMESYNCFLAG_SAMPLE ;
 int ICTIMESYNCFLAG_SYNC ;
 int INIT_WORK (int *,int ) ;
 int hv_set_host_time ;
 int kfree (struct adj_time_work*) ;
 struct adj_time_work* kmalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static inline void adj_guesttime(u64 hosttime, u8 flags)
{
 struct adj_time_work *wrk;
 static s32 scnt = 50;

 wrk = kmalloc(sizeof(struct adj_time_work), GFP_ATOMIC);
 if (wrk == ((void*)0))
  return;

 wrk->host_time = hosttime;
 if ((flags & ICTIMESYNCFLAG_SYNC) != 0) {
  INIT_WORK(&wrk->work, hv_set_host_time);
  schedule_work(&wrk->work);
  return;
 }

 if ((flags & ICTIMESYNCFLAG_SAMPLE) != 0 && scnt > 0) {
  scnt--;
  INIT_WORK(&wrk->work, hv_set_host_time);
  schedule_work(&wrk->work);
 } else
  kfree(wrk);
}
