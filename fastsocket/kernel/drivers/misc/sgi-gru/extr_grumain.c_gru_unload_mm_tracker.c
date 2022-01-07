
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_ctxnum; struct gru_mm_struct* ts_gms; } ;
struct gru_state {size_t gs_gid; int gs_asid_lock; } ;
struct gru_mm_tracker {unsigned short mt_ctxbitmap; } ;
struct gru_mm_struct {int ms_asid_lock; int * ms_asidmap; struct gru_mm_tracker* ms_asids; } ;


 int BUG_ON (int) ;
 int gru_dbg (int ,char*,size_t,struct gru_thread_state*,struct gru_mm_struct*,int,int ) ;
 int grudev ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gru_unload_mm_tracker(struct gru_state *gru,
     struct gru_thread_state *gts)
{
 struct gru_mm_struct *gms = gts->ts_gms;
 struct gru_mm_tracker *asids;
 unsigned short ctxbitmap;

 asids = &gms->ms_asids[gru->gs_gid];
 ctxbitmap = (1 << gts->ts_ctxnum);
 spin_lock(&gms->ms_asid_lock);
 spin_lock(&gru->gs_asid_lock);
 BUG_ON((asids->mt_ctxbitmap & ctxbitmap) != ctxbitmap);
 asids->mt_ctxbitmap ^= ctxbitmap;
 gru_dbg(grudev, "gid %d, gts %p, gms %p, ctxnum 0x%d, asidmap 0x%lx\n",
  gru->gs_gid, gts, gms, gts->ts_ctxnum, gms->ms_asidmap[0]);
 spin_unlock(&gru->gs_asid_lock);
 spin_unlock(&gms->ms_asid_lock);
}
