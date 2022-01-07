
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_mcast_ramrod_params {TYPE_1__* mcast_obj; } ;
struct TYPE_4__ {int (* clear_pending ) (TYPE_2__*) ;} ;
struct TYPE_3__ {scalar_t__ (* check_pending ) (TYPE_1__*) ;TYPE_2__ raw; } ;
struct bnx2x {int dev; TYPE_1__ mcast_obj; } ;
typedef int rparam ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MCAST_CMD_CONT ;
 int bnx2x_config_mcast (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 int memset (struct bnx2x_mcast_ramrod_params*,int ,int) ;
 int netif_addr_lock_bh (int ) ;
 int netif_addr_unlock_bh (int ) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_1__*) ;

__attribute__((used)) static void bnx2x_handle_mcast_eqe(struct bnx2x *bp)
{
 struct bnx2x_mcast_ramrod_params rparam;
 int rc;

 memset(&rparam, 0, sizeof(rparam));

 rparam.mcast_obj = &bp->mcast_obj;

 netif_addr_lock_bh(bp->dev);


 bp->mcast_obj.raw.clear_pending(&bp->mcast_obj.raw);


 if (bp->mcast_obj.check_pending(&bp->mcast_obj)) {
  rc = bnx2x_config_mcast(bp, &rparam, BNX2X_MCAST_CMD_CONT);
  if (rc < 0)
   BNX2X_ERR("Failed to send pending mcast commands: %d\n",
      rc);
 }

 netif_addr_unlock_bh(bp->dev);
}
