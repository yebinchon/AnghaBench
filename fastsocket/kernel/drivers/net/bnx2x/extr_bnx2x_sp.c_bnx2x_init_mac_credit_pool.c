
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x_credit_pool_obj {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_CAM_SIZE_EMUL ;
 int BNX2X_MAX_EMUL_MULTI ;
 int BNX2X_MAX_MULTICAST ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 int CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int MAX_MAC_CREDIT_E1 ;
 int MAX_MAC_CREDIT_E1H ;
 int MAX_MAC_CREDIT_E2 ;
 int bnx2x_init_credit_pool (struct bnx2x_credit_pool_obj*,int,int) ;

void bnx2x_init_mac_credit_pool(struct bnx2x *bp,
    struct bnx2x_credit_pool_obj *p, u8 func_id,
    u8 func_num)
{



 int cam_sz;

 if (CHIP_IS_E1(bp)) {

  if (!CHIP_REV_IS_SLOW(bp))
   cam_sz = (MAX_MAC_CREDIT_E1 / 2) - BNX2X_MAX_MULTICAST;
  else
   cam_sz = 5 - BNX2X_MAX_EMUL_MULTI;

  bnx2x_init_credit_pool(p, func_id * cam_sz, cam_sz);

 } else if (CHIP_IS_E1H(bp)) {



  if ((func_num > 0)) {
   if (!CHIP_REV_IS_SLOW(bp))
    cam_sz = (MAX_MAC_CREDIT_E1H / (2*func_num));
   else
    cam_sz = 5;
   bnx2x_init_credit_pool(p, func_id * cam_sz, cam_sz);
  } else {

   bnx2x_init_credit_pool(p, 0, 0);
  }

 } else {




  if ((func_num > 0)) {
   if (!CHIP_REV_IS_SLOW(bp))
    cam_sz = (MAX_MAC_CREDIT_E2 / func_num);
   else
    cam_sz = 5;




   bnx2x_init_credit_pool(p, -1, cam_sz);
  } else {

   bnx2x_init_credit_pool(p, 0, 0);
  }
 }
}
