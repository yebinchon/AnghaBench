
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_init_general_data {int statistics_en_flg; int cos; void* activate_flg; int traffic_type; int func_id; int mtu; int sp_client_id; void* is_fcoe_flg; int statistics_counter_id; void* statistics_zero_flg; int client_id; } ;
struct bnx2x_queue_sp_obj {int func_id; int cl_id; } ;
struct bnx2x_general_setup_params {int cos; int mtu; int spcl_id; int stat_id; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int BNX2X_Q_FLG_ACTIVE ;
 int BNX2X_Q_FLG_FCOE ;
 int BNX2X_Q_FLG_STATS ;
 int BNX2X_Q_FLG_ZERO_STATS ;
 int DISABLE_STATISTIC_COUNTER_ID_VALUE ;
 int DP (int ,char*,void*,int ,int) ;
 int LLFC_TRAFFIC_TYPE_FCOE ;
 int LLFC_TRAFFIC_TYPE_NW ;
 int cpu_to_le16 (int ) ;
 void* test_bit (int ,unsigned long*) ;

__attribute__((used)) static void bnx2x_q_fill_init_general_data(struct bnx2x *bp,
    struct bnx2x_queue_sp_obj *o,
    struct bnx2x_general_setup_params *params,
    struct client_init_general_data *gen_data,
    unsigned long *flags)
{
 gen_data->client_id = o->cl_id;

 if (test_bit(BNX2X_Q_FLG_STATS, flags)) {
  gen_data->statistics_counter_id =
     params->stat_id;
  gen_data->statistics_en_flg = 1;
  gen_data->statistics_zero_flg =
   test_bit(BNX2X_Q_FLG_ZERO_STATS, flags);
 } else
  gen_data->statistics_counter_id =
     DISABLE_STATISTIC_COUNTER_ID_VALUE;

 gen_data->is_fcoe_flg = test_bit(BNX2X_Q_FLG_FCOE, flags);
 gen_data->activate_flg = test_bit(BNX2X_Q_FLG_ACTIVE, flags);
 gen_data->sp_client_id = params->spcl_id;
 gen_data->mtu = cpu_to_le16(params->mtu);
 gen_data->func_id = o->func_id;

 gen_data->cos = params->cos;

 gen_data->traffic_type =
  test_bit(BNX2X_Q_FLG_FCOE, flags) ?
  LLFC_TRAFFIC_TYPE_FCOE : LLFC_TRAFFIC_TYPE_NW;

 DP(BNX2X_MSG_SP, "flags: active %d, cos %d, stats en %d\n",
    gen_data->activate_flg, gen_data->cos, gen_data->statistics_en_flg);
}
