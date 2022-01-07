
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int mode_bit_map; scalar_t__ cmd_offset; } ;
struct TYPE_9__ {scalar_t__ data_len; int data_off; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {scalar_t__ op; scalar_t__ offset; } ;
union init_op {TYPE_5__ if_mode; TYPE_4__ arr_wr; TYPE_3__ zero; TYPE_2__ write; TYPE_1__ raw; } ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct bnx2x {int dummy; } ;


 size_t BLOCK_OPS_IDX (scalar_t__,scalar_t__,int ) ;
 scalar_t__* INIT_DATA (struct bnx2x*) ;
 int INIT_MODE_FLAGS (struct bnx2x*) ;
 int * INIT_OPS (struct bnx2x*) ;
 scalar_t__* INIT_OPS_OFFSETS (struct bnx2x*) ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int STAGE_END ;
 int STAGE_START ;
 int bnx2x_init_fill (struct bnx2x*,scalar_t__,int ,int ,int) ;
 int bnx2x_init_str_wr (struct bnx2x*,scalar_t__,scalar_t__ const*,scalar_t__) ;
 int bnx2x_init_wr_64 (struct bnx2x*,scalar_t__,scalar_t__ const*,scalar_t__) ;
 int bnx2x_init_wr_wb (struct bnx2x*,scalar_t__,scalar_t__ const*,scalar_t__) ;
 int bnx2x_init_wr_zp (struct bnx2x*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void bnx2x_init_block(struct bnx2x *bp, u32 block, u32 stage)
{
 u16 op_start =
  INIT_OPS_OFFSETS(bp)[BLOCK_OPS_IDX(block, stage,
           STAGE_START)];
 u16 op_end =
  INIT_OPS_OFFSETS(bp)[BLOCK_OPS_IDX(block, stage,
           STAGE_END)];
 const union init_op *op;
 u32 op_idx, op_type, addr, len;
 const u32 *data, *data_base;


 if (op_start == op_end)
  return;

 data_base = INIT_DATA(bp);

 for (op_idx = op_start; op_idx < op_end; op_idx++) {

  op = (const union init_op *)&(INIT_OPS(bp)[op_idx]);

  op_type = op->raw.op;
  addr = op->raw.offset;




  len = op->arr_wr.data_len;
  data = data_base + op->arr_wr.data_off;

  switch (op_type) {
  case 135:
   REG_RD(bp, addr);
   break;
  case 131:
   REG_WR(bp, addr, op->write.val);
   break;
  case 134:
   bnx2x_init_str_wr(bp, addr, data, len);
   break;
  case 133:
   bnx2x_init_wr_wb(bp, addr, data, len);
   break;
  case 128:
   bnx2x_init_fill(bp, addr, 0, op->zero.len, 0);
   break;
  case 132:
   bnx2x_init_fill(bp, addr, 0, op->zero.len, 1);
   break;
  case 129:
   bnx2x_init_wr_zp(bp, addr, len,
      op->arr_wr.data_off);
   break;
  case 130:
   bnx2x_init_wr_64(bp, addr, data, len);
   break;
  case 137:



   if ((INIT_MODE_FLAGS(bp) &
    op->if_mode.mode_bit_map) !=
    op->if_mode.mode_bit_map)
    op_idx += op->if_mode.cmd_offset;
   break;
  case 136:



   if ((INIT_MODE_FLAGS(bp) &
    op->if_mode.mode_bit_map) == 0)
    op_idx += op->if_mode.cmd_offset;
   break;
  default:


   break;
  }
 }
}
