
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gru_tlb_fault_handle {int dummy; } ;
struct gru_thread_state {int ts_cbr_au_count; int ts_ctxnum; TYPE_1__* ts_gru; scalar_t__ ts_force_cch_reload; } ;
struct TYPE_2__ {int gs_gid; int gs_gru_base_vaddr; } ;


 int EAGAIN ;
 int EINVAL ;
 int GRU_CBR_AU_SIZE ;
 int GRU_HANDLE_STRIDE ;
 int GRU_NUM_CB ;
 int STAT (int ) ;
 int call_os ;
 int get_cb_number (void*) ;
 void* get_gseg_base_address_cb (int ,int ,int) ;
 struct gru_tlb_fault_handle* get_tfh_by_index (TYPE_1__*,int) ;
 int gru_check_context_placement (struct gru_thread_state*) ;
 int gru_dbg (int ,char*,unsigned long,int,struct gru_thread_state*) ;
 struct gru_thread_state* gru_find_lock_gts (unsigned long) ;
 int gru_unlock_gts (struct gru_thread_state*) ;
 int gru_update_cch (struct gru_thread_state*) ;
 int gru_user_dropin (struct gru_thread_state*,struct gru_tlb_fault_handle*,void*) ;
 int grudev ;
 int thread_cbr_number (struct gru_thread_state*,int) ;

int gru_handle_user_call_os(unsigned long cb)
{
 struct gru_tlb_fault_handle *tfh;
 struct gru_thread_state *gts;
 void *cbk;
 int ucbnum, cbrnum, ret = -EINVAL;

 STAT(call_os);


 ucbnum = get_cb_number((void *)cb);
 if ((cb & (GRU_HANDLE_STRIDE - 1)) || ucbnum >= GRU_NUM_CB)
  return -EINVAL;

 gts = gru_find_lock_gts(cb);
 if (!gts)
  return -EINVAL;
 gru_dbg(grudev, "address 0x%lx, gid %d, gts 0x%p\n", cb, gts->ts_gru ? gts->ts_gru->gs_gid : -1, gts);

 if (ucbnum >= gts->ts_cbr_au_count * GRU_CBR_AU_SIZE)
  goto exit;

 gru_check_context_placement(gts);




 if (gts->ts_gru && gts->ts_force_cch_reload) {
  gts->ts_force_cch_reload = 0;
  gru_update_cch(gts);
 }

 ret = -EAGAIN;
 cbrnum = thread_cbr_number(gts, ucbnum);
 if (gts->ts_gru) {
  tfh = get_tfh_by_index(gts->ts_gru, cbrnum);
  cbk = get_gseg_base_address_cb(gts->ts_gru->gs_gru_base_vaddr,
    gts->ts_ctxnum, ucbnum);
  ret = gru_user_dropin(gts, tfh, cbk);
 }
exit:
 gru_unlock_gts(gts);
 return ret;
}
