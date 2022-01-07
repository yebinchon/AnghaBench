
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
union event_ring_elem {TYPE_1__ message; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ starting_cid; scalar_t__ iscsi_l2_cid; } ;
struct bnx2x {TYPE_2__ cnic_eth_dev; } ;


 int BNX2X_ERR (char*,scalar_t__) ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,scalar_t__) ;
 int bnx2x_cnic_cfc_comp (struct bnx2x*,scalar_t__,int ) ;
 int bnx2x_panic_dump (struct bnx2x*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int bnx2x_cnic_handle_cfc_del(struct bnx2x *bp, u32 cid,
          union event_ring_elem *elem)
{
 u8 err = elem->message.error;

 if (!bp->cnic_eth_dev.starting_cid ||
     (cid < bp->cnic_eth_dev.starting_cid &&
     cid != bp->cnic_eth_dev.iscsi_l2_cid))
  return 1;

 DP(BNX2X_MSG_SP, "got delete ramrod for CNIC CID %d\n", cid);

 if (unlikely(err)) {

  BNX2X_ERR("got delete ramrod for CNIC CID %d with error!\n",
     cid);
  bnx2x_panic_dump(bp, 0);
 }
 bnx2x_cnic_cfc_comp(bp, cid, err);
 return 0;
}
