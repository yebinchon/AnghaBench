
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct qib_devdata {int dummy; } ;


 int BISTEN_LSB ;
 int R_OPCODE_LSB ;
 int R_OP_SHIFT ;
 int R_TDI_LSB ;
 int SJA_EN ;
 int kr_r_access ;
 int kr_scratch ;
 int qib_r_wait_for_rdy (struct qib_devdata*) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;

__attribute__((used)) static int qib_r_shift(struct qib_devdata *dd, int bisten,
         int len, u8 *inp, u8 *outp)
{
 u64 valbase, val;
 int ret, pos;

 valbase = SJA_EN | (bisten << BISTEN_LSB) |
  (R_OP_SHIFT << R_OPCODE_LSB);
 ret = qib_r_wait_for_rdy(dd);
 if (ret < 0)
  goto bail;
 for (pos = 0; pos < len; ++pos) {
  val = valbase;
  if (outp) {
   outp[pos >> 3] &= ~(1 << (pos & 7));
   outp[pos >> 3] |= (ret << (pos & 7));
  }
  if (inp) {
   int tdi = inp[pos >> 3] >> (pos & 7);
   val |= ((tdi & 1) << R_TDI_LSB);
  }
  qib_write_kreg(dd, kr_r_access, val);
  qib_read_kreg32(dd, kr_scratch);
  ret = qib_r_wait_for_rdy(dd);
  if (ret < 0)
   break;
 }

 val = SJA_EN | (bisten << BISTEN_LSB);
 qib_write_kreg(dd, kr_r_access, val);
 qib_read_kreg32(dd, kr_scratch);
 ret = qib_r_wait_for_rdy(dd);

 if (ret >= 0)
  ret = pos;
bail:
 return ret;
}
