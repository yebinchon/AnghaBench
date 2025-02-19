
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {int torture; struct ubi_wl_entry* e; int * func; } ;
struct ubi_wl_entry {int ec; int pnum; } ;
struct ubi_device {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int dbg_wl (char*,int ,int ,int) ;
 int erase_worker ;
 struct ubi_work* kmalloc (int,int ) ;
 int schedule_ubi_work (struct ubi_device*,struct ubi_work*) ;

__attribute__((used)) static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
     int torture)
{
 struct ubi_work *wl_wrk;

 dbg_wl("schedule erasure of PEB %d, EC %d, torture %d",
        e->pnum, e->ec, torture);

 wl_wrk = kmalloc(sizeof(struct ubi_work), GFP_NOFS);
 if (!wl_wrk)
  return -ENOMEM;

 wl_wrk->func = &erase_worker;
 wl_wrk->e = e;
 wl_wrk->torture = torture;

 schedule_ubi_work(ubi, wl_wrk);
 return 0;
}
