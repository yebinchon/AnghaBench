
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int lo; int hi; } ;
struct TYPE_5__ {int member_0; } ;
struct event_ring_data {int sb_id; int index_id; int producer; TYPE_4__ base_addr; TYPE_1__ member_0; } ;
struct cmng_struct_per_port {int dummy; } ;
struct bnx2x_func_init_params {int func_flgs; int pf_id; int func_id; int spq_prod; int spq_map; int member_0; } ;
struct TYPE_7__ {scalar_t__ pmf; } ;
struct TYPE_6__ {int line_speed; } ;
struct bnx2x {int flags; int eq_prod; int eq_mapping; int cmng; TYPE_3__ port; TYPE_2__ link_vars; int spq_prod_idx; int spq_mapping; } ;


 int BNX2X_IGU_STAS_MSG_PF_CNT ;
 int BNX2X_IGU_STAS_MSG_VF_CNT ;
 int BP_FUNC (struct bnx2x*) ;
 int BP_PORT (struct bnx2x*) ;
 int BP_VN (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CHIP_MODE_IS_4_PORT (struct bnx2x*) ;
 int DEF_SB_ID ;
 int FUNC_FLG_LEADING ;
 int FUNC_FLG_SPQ ;
 int FUNC_FLG_STATS ;
 int FUNC_FLG_TPA ;
 int HC_SP_INDEX_EQ_CONS ;
 scalar_t__ IGU_REG_STATISTIC_NUM_MESSAGE_SENT ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int SPEED_10000 ;
 int TPA_ENABLE_FLAG ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_cmng_fns_init (struct bnx2x*,int,int ) ;
 int bnx2x_func_init (struct bnx2x*,struct bnx2x_func_init_params*) ;
 int bnx2x_get_cmng_fns_mode (struct bnx2x*) ;
 int memset (int *,int ,int) ;
 int storm_memset_cmng (struct bnx2x*,int *,int ) ;
 int storm_memset_eq_data (struct bnx2x*,struct event_ring_data*,int) ;

__attribute__((used)) static void bnx2x_pf_init(struct bnx2x *bp)
{
 struct bnx2x_func_init_params func_init = {0};
 struct event_ring_data eq_data = { {0} };
 u16 flags;

 if (!CHIP_IS_E1x(bp)) {


  REG_WR(bp, IGU_REG_STATISTIC_NUM_MESSAGE_SENT +
      BNX2X_IGU_STAS_MSG_VF_CNT*4 +
      (CHIP_MODE_IS_4_PORT(bp) ?
    BP_FUNC(bp) : BP_VN(bp))*4, 0);

  REG_WR(bp, IGU_REG_STATISTIC_NUM_MESSAGE_SENT +
      BNX2X_IGU_STAS_MSG_VF_CNT*4 +
      BNX2X_IGU_STAS_MSG_PF_CNT*4 +
      (CHIP_MODE_IS_4_PORT(bp) ?
    BP_FUNC(bp) : BP_VN(bp))*4, 0);
 }


 flags = (FUNC_FLG_STATS | FUNC_FLG_LEADING | FUNC_FLG_SPQ);




 flags |= (bp->flags & TPA_ENABLE_FLAG) ? FUNC_FLG_TPA : 0;

 func_init.func_flgs = flags;
 func_init.pf_id = BP_FUNC(bp);
 func_init.func_id = BP_FUNC(bp);
 func_init.spq_map = bp->spq_mapping;
 func_init.spq_prod = bp->spq_prod_idx;

 bnx2x_func_init(bp, &func_init);

 memset(&(bp->cmng), 0, sizeof(struct cmng_struct_per_port));







 bp->link_vars.line_speed = SPEED_10000;
 bnx2x_cmng_fns_init(bp, 1, bnx2x_get_cmng_fns_mode(bp));


 if (bp->port.pmf)
  storm_memset_cmng(bp, &bp->cmng, BP_PORT(bp));


 eq_data.base_addr.hi = U64_HI(bp->eq_mapping);
 eq_data.base_addr.lo = U64_LO(bp->eq_mapping);
 eq_data.producer = bp->eq_prod;
 eq_data.index_id = HC_SP_INDEX_EQ_CONS;
 eq_data.sb_id = DEF_SB_ID;
 storm_memset_eq_data(bp, &eq_data, BP_FUNC(bp));
}
