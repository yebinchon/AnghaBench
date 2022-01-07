
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ql_adapter {int func; int ndev; int vlgrp; } ;


 int CAM_OUT_CQ_ID_SHIFT ;
 int CAM_OUT_FUNC_SHIFT ;
 int CAM_OUT_ROUTE_NIC ;
 int CAM_OUT_RV ;
 int EPERM ;
 int MAC_ADDR_DATA ;
 int MAC_ADDR_E ;
 int MAC_ADDR_IDX ;
 int MAC_ADDR_IDX_SHIFT ;
 int MAC_ADDR_MW ;




 int ifup ;
 int netif_crit (struct ql_adapter*,int ,int ,char*,int) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
          u16 index)
{
 u32 offset = 0;
 int status = 0;

 switch (type) {
 case 129:
  {
   u32 upper = (addr[0] << 8) | addr[1];
   u32 lower = (addr[2] << 24) | (addr[3] << 16) |
     (addr[4] << 8) | (addr[5]);

   status =
    ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
    (index << MAC_ADDR_IDX_SHIFT) |
    type | MAC_ADDR_E);
   ql_write32(qdev, MAC_ADDR_DATA, lower);
   status =
    ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
    (index << MAC_ADDR_IDX_SHIFT) |
    type | MAC_ADDR_E);

   ql_write32(qdev, MAC_ADDR_DATA, upper);
   status =
    ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   break;
  }
 case 131:
  {
   u32 cam_output;
   u32 upper = (addr[0] << 8) | addr[1];
   u32 lower =
       (addr[2] << 24) | (addr[3] << 16) | (addr[4] << 8) |
       (addr[5]);
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
       (index << MAC_ADDR_IDX_SHIFT) |
       type);
   ql_write32(qdev, MAC_ADDR_DATA, lower);
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
       (index << MAC_ADDR_IDX_SHIFT) |
       type);
   ql_write32(qdev, MAC_ADDR_DATA, upper);
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset) |
       (index << MAC_ADDR_IDX_SHIFT) |
       type);




   cam_output = (CAM_OUT_ROUTE_NIC |
          (qdev->
           func << CAM_OUT_FUNC_SHIFT) |
     (0 << CAM_OUT_CQ_ID_SHIFT));
   if (qdev->vlgrp)
    cam_output |= CAM_OUT_RV;

   ql_write32(qdev, MAC_ADDR_DATA, cam_output);
   break;
  }
 case 128:
  {
   u32 enable_bit = *((u32 *) &addr[0]);





   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, offset |
       (index << MAC_ADDR_IDX_SHIFT) |
       type |
       enable_bit);
   break;
  }
 case 130:
 default:
  netif_crit(qdev, ifup, qdev->ndev,
      "Address type %d not yet supported.\n", type);
  status = -EPERM;
 }
exit:
 return status;
}
