
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {int dummy; } ;


 int BISTEN_LSB ;
 int R_OPCODE_LSB ;
 int R_OP_UPDATE ;
 int SJA_EN ;
 int kr_r_access ;
 int kr_scratch ;
 int qib_r_wait_for_rdy (struct qib_devdata*) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;

__attribute__((used)) static int qib_r_update(struct qib_devdata *dd, int bisten)
{
 u64 val;
 int ret;

 val = SJA_EN | (bisten << BISTEN_LSB) | (R_OP_UPDATE << R_OPCODE_LSB);
 ret = qib_r_wait_for_rdy(dd);
 if (ret >= 0) {
  qib_write_kreg(dd, kr_r_access, val);
  qib_read_kreg32(dd, kr_scratch);
 }
 return ret;
}
