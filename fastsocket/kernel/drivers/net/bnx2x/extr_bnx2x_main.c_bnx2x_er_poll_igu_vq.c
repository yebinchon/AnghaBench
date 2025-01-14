
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,scalar_t__) ;
 int EBUSY ;
 int IGU_REG_PENDING_BITS_STATUS ;
 scalar_t__ REG_RD (struct bnx2x*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_er_poll_igu_vq(struct bnx2x *bp)
{
 u32 cnt = 1000;
 u32 pend_bits = 0;

 do {
  pend_bits = REG_RD(bp, IGU_REG_PENDING_BITS_STATUS);

  if (pend_bits == 0)
   break;

  usleep_range(1000, 2000);
 } while (cnt-- > 0);

 if (cnt <= 0) {
  BNX2X_ERR("Still pending IGU requests pend_bits=%x!\n",
     pend_bits);
  return -EBUSY;
 }

 return 0;
}
