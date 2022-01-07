
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_6__ {int max_sdtr_index; int iop_base; } ;
struct TYPE_5__ {int xfer_period; int req_ack_offset; int msg_req; int msg_len; int msg_type; } ;
typedef int PortAddr ;
typedef TYPE_1__ EXT_MSG ;
typedef TYPE_2__ ASC_DVC_VAR ;


 int ASCV_MSGOUT_BEG ;
 int ASC_SYN_MAX_OFFSET ;
 int AscGetSynPeriodIndex (TYPE_2__*,int) ;
 int AscMemWordCopyPtrToLram (int ,int ,int*,int) ;
 int EXTENDED_MESSAGE ;
 int EXTENDED_SDTR ;
 int MS_SDTR_LEN ;

__attribute__((used)) static uchar
AscMsgOutSDTR(ASC_DVC_VAR *asc_dvc, uchar sdtr_period, uchar sdtr_offset)
{
 EXT_MSG sdtr_buf;
 uchar sdtr_period_index;
 PortAddr iop_base;

 iop_base = asc_dvc->iop_base;
 sdtr_buf.msg_type = EXTENDED_MESSAGE;
 sdtr_buf.msg_len = MS_SDTR_LEN;
 sdtr_buf.msg_req = EXTENDED_SDTR;
 sdtr_buf.xfer_period = sdtr_period;
 sdtr_offset &= ASC_SYN_MAX_OFFSET;
 sdtr_buf.req_ack_offset = sdtr_offset;
 sdtr_period_index = AscGetSynPeriodIndex(asc_dvc, sdtr_period);
 if (sdtr_period_index <= asc_dvc->max_sdtr_index) {
  AscMemWordCopyPtrToLram(iop_base, ASCV_MSGOUT_BEG,
     (uchar *)&sdtr_buf,
     sizeof(EXT_MSG) >> 1);
  return ((sdtr_period_index << 4) | sdtr_offset);
 } else {
  sdtr_buf.req_ack_offset = 0;
  AscMemWordCopyPtrToLram(iop_base, ASCV_MSGOUT_BEG,
     (uchar *)&sdtr_buf,
     sizeof(EXT_MSG) >> 1);
  return 0;
 }
}
