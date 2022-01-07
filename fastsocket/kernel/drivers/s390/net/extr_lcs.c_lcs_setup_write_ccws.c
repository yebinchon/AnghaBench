
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ buf_idx; scalar_t__ io_idx; TYPE_4__* ccws; TYPE_1__* iob; } ;
struct TYPE_7__ {int state; } ;
struct lcs_card {TYPE_3__ write; TYPE_2__ read; } ;
struct ccw1 {int dummy; } ;
typedef void* __u32 ;
struct TYPE_9__ {int flags; void* cda; int cmd_code; scalar_t__ count; } ;
struct TYPE_6__ {TYPE_4__* data; } ;


 int CCW_FLAG_CC ;
 int CCW_FLAG_SLI ;
 int CCW_FLAG_SUSPEND ;
 int LCS_CCW_TRANSFER ;
 int LCS_CCW_WRITE ;
 int LCS_CH_STATE_INIT ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_NUM_BUFFS ;
 scalar_t__ __pa (TYPE_4__*) ;
 int memset (TYPE_4__*,int ,int) ;
 int setup ;

__attribute__((used)) static void
lcs_setup_write_ccws(struct lcs_card *card)
{
 int cnt;

 LCS_DBF_TEXT(3, setup, "iwritccw");

 memset(card->write.ccws, 0, sizeof(struct ccw1) * LCS_NUM_BUFFS + 1);
 for (cnt = 0; cnt < LCS_NUM_BUFFS; cnt++) {
  card->write.ccws[cnt].cmd_code = LCS_CCW_WRITE;
  card->write.ccws[cnt].count = 0;
  card->write.ccws[cnt].flags =
   CCW_FLAG_SUSPEND | CCW_FLAG_CC | CCW_FLAG_SLI;




  card->write.ccws[cnt].cda =
   (__u32) __pa(card->write.iob[cnt].data);
 }

 card->write.ccws[LCS_NUM_BUFFS].cmd_code = LCS_CCW_TRANSFER;
 card->write.ccws[LCS_NUM_BUFFS].cda =
  (__u32) __pa(card->write.ccws);

 card->read.state = LCS_CH_STATE_INIT;

 card->write.io_idx = 0;
 card->write.buf_idx = 0;
}
