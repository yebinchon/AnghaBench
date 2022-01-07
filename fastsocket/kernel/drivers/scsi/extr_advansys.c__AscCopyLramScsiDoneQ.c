
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef void* uchar ;
struct TYPE_3__ {int remain_bytes; void* extra_bytes; void* sense_len; void* cntl; void* q_no; void* q_status; } ;
typedef int PortAddr ;
typedef int ASC_SCSIQ_3 ;
typedef int ASC_SCSIQ_2 ;
typedef TYPE_1__ ASC_QDONE_INFO ;
typedef int ASC_DCNT ;
typedef int ADV_DCNT ;


 scalar_t__ ASC_SCSIQ_B_CNTL ;
 scalar_t__ ASC_SCSIQ_B_SENSE_LEN ;
 scalar_t__ ASC_SCSIQ_B_STATUS ;
 int ASC_SCSIQ_DONE_INFO_BEG ;
 scalar_t__ ASC_SCSIQ_DW_REMAIN_XFER_CNT ;
 scalar_t__ ASC_SCSIQ_W_ALT_DC1 ;
 int AscReadLramWord (int ,int) ;
 int DvcGetQinfo (int ,int,void**,int) ;

__attribute__((used)) static uchar
_AscCopyLramScsiDoneQ(PortAddr iop_base,
        ushort q_addr,
        ASC_QDONE_INFO *scsiq, ASC_DCNT max_dma_count)
{
 ushort _val;
 uchar sg_queue_cnt;

 DvcGetQinfo(iop_base,
      q_addr + ASC_SCSIQ_DONE_INFO_BEG,
      (uchar *)scsiq,
      (sizeof(ASC_SCSIQ_2) + sizeof(ASC_SCSIQ_3)) / 2);

 _val = AscReadLramWord(iop_base,
          (ushort)(q_addr + (ushort)ASC_SCSIQ_B_STATUS));
 scsiq->q_status = (uchar)_val;
 scsiq->q_no = (uchar)(_val >> 8);
 _val = AscReadLramWord(iop_base,
          (ushort)(q_addr + (ushort)ASC_SCSIQ_B_CNTL));
 scsiq->cntl = (uchar)_val;
 sg_queue_cnt = (uchar)(_val >> 8);
 _val = AscReadLramWord(iop_base,
          (ushort)(q_addr +
     (ushort)ASC_SCSIQ_B_SENSE_LEN));
 scsiq->sense_len = (uchar)_val;
 scsiq->extra_bytes = (uchar)(_val >> 8);




 scsiq->remain_bytes = (((ADV_DCNT)AscReadLramWord(iop_base,
         (ushort)(q_addr +
           (ushort)
           ASC_SCSIQ_W_ALT_DC1)))
          << 16);



 scsiq->remain_bytes += AscReadLramWord(iop_base,
            (ushort)(q_addr + (ushort)
       ASC_SCSIQ_DW_REMAIN_XFER_CNT));

 scsiq->remain_bytes &= max_dma_count;
 return sg_queue_cnt;
}
