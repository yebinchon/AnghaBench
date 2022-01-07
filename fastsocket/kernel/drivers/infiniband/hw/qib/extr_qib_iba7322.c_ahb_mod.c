
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct qib_devdata {int dummy; } ;


 int AHB_ADDR_LSB ;
 int AHB_DATA_LSB ;
 int AHB_TRANS_RDY ;
 int AHB_TRANS_TRIES ;
 int AHB_WR ;
 int KR_AHB_ACC ;
 int KR_AHB_TRANS ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;

__attribute__((used)) static u32 ahb_mod(struct qib_devdata *dd, int quad, int chan, int addr,
      u32 data, u32 mask)
{
 u32 rd_data, wr_data, sz_mask;
 u64 trans, acc, prev_acc;
 u32 ret = 0xBAD0BAD;
 int tries;

 prev_acc = qib_read_kreg64(dd, KR_AHB_ACC);

 acc = (quad << 1) | 1;
 qib_write_kreg(dd, KR_AHB_ACC, acc);

 for (tries = 1; tries < AHB_TRANS_TRIES; ++tries) {
  trans = qib_read_kreg64(dd, KR_AHB_TRANS);
  if (trans & AHB_TRANS_RDY)
   break;
 }
 if (tries >= AHB_TRANS_TRIES) {
  qib_dev_err(dd, "No ahb_rdy in %d tries\n", AHB_TRANS_TRIES);
  goto bail;
 }




 sz_mask = (1UL << ((quad == 1) ? 32 : 16)) - 1;
 wr_data = data & mask & sz_mask;
 if ((~mask & sz_mask) != 0) {
  trans = ((chan << 6) | addr) << (AHB_ADDR_LSB + 1);
  qib_write_kreg(dd, KR_AHB_TRANS, trans);

  for (tries = 1; tries < AHB_TRANS_TRIES; ++tries) {
   trans = qib_read_kreg64(dd, KR_AHB_TRANS);
   if (trans & AHB_TRANS_RDY)
    break;
  }
  if (tries >= AHB_TRANS_TRIES) {
   qib_dev_err(dd, "No Rd ahb_rdy in %d tries\n",
        AHB_TRANS_TRIES);
   goto bail;
  }

  trans = qib_read_kreg64(dd, KR_AHB_TRANS);
  rd_data = (uint32_t)(trans >> AHB_DATA_LSB);
  wr_data |= (rd_data & ~mask & sz_mask);
 }


 if (mask & sz_mask) {
  trans = ((chan << 6) | addr) << (AHB_ADDR_LSB + 1);
  trans |= ((uint64_t)wr_data << AHB_DATA_LSB);
  trans |= AHB_WR;
  qib_write_kreg(dd, KR_AHB_TRANS, trans);

  for (tries = 1; tries < AHB_TRANS_TRIES; ++tries) {
   trans = qib_read_kreg64(dd, KR_AHB_TRANS);
   if (trans & AHB_TRANS_RDY)
    break;
  }
  if (tries >= AHB_TRANS_TRIES) {
   qib_dev_err(dd, "No Wr ahb_rdy in %d tries\n",
        AHB_TRANS_TRIES);
   goto bail;
  }
 }
 ret = wr_data;
bail:
 qib_write_kreg(dd, KR_AHB_ACC, prev_acc);
 return ret;
}
