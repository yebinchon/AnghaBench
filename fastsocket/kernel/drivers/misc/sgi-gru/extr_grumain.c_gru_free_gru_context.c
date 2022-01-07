
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {size_t ts_ctxnum; int ts_blade; struct gru_state* ts_gru; } ;
struct gru_state {int gs_lock; int gs_context_map; int ** gs_gts; int gs_gid; } ;


 int BUG_ON (int) ;
 size_t NULLCTX ;
 int STAT (int ) ;
 int __clear_bit (size_t,int *) ;
 int free_context ;
 int free_gru_resources (struct gru_state*,struct gru_thread_state*) ;
 int gru_dbg (int ,char*,struct gru_thread_state*,int ) ;
 int grudev ;
 int gts_drop (struct gru_thread_state*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (size_t,int *) ;

__attribute__((used)) static void gru_free_gru_context(struct gru_thread_state *gts)
{
 struct gru_state *gru;

 gru = gts->ts_gru;
 gru_dbg(grudev, "gts %p, gid %d\n", gts, gru->gs_gid);

 spin_lock(&gru->gs_lock);
 gru->gs_gts[gts->ts_ctxnum] = ((void*)0);
 free_gru_resources(gru, gts);
 BUG_ON(test_bit(gts->ts_ctxnum, &gru->gs_context_map) == 0);
 __clear_bit(gts->ts_ctxnum, &gru->gs_context_map);
 gts->ts_ctxnum = NULLCTX;
 gts->ts_gru = ((void*)0);
 gts->ts_blade = -1;
 spin_unlock(&gru->gs_lock);

 gts_drop(gts);
 STAT(free_context);
}
