
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ql_adapter {int ndev; } ;


 int EPERM ;
 int MAC_ADDR_ADR ;
 int MAC_ADDR_DATA ;
 int MAC_ADDR_IDX ;
 int MAC_ADDR_IDX_SHIFT ;
 int MAC_ADDR_MR ;
 int MAC_ADDR_MW ;
 int MAC_ADDR_RS ;




 int ifup ;
 int netif_crit (struct ql_adapter*,int ,int ,char*,int) ;
 void* ql_read32 (struct ql_adapter*,int ) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

int ql_get_mac_addr_reg(struct ql_adapter *qdev, u32 type, u16 index,
   u32 *value)
{
 u32 offset = 0;
 int status;

 switch (type) {
 case 129:
 case 131:
  {
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
       (index << MAC_ADDR_IDX_SHIFT) |
       MAC_ADDR_ADR | MAC_ADDR_RS | type);
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MR, 0);
   if (status)
    goto exit;
   *value++ = ql_read32(qdev, MAC_ADDR_DATA);
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MW, 0);
   if (status)
    goto exit;
   ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
       (index << MAC_ADDR_IDX_SHIFT) |
       MAC_ADDR_ADR | MAC_ADDR_RS | type);
   status =
       ql_wait_reg_rdy(qdev,
    MAC_ADDR_IDX, MAC_ADDR_MR, 0);
   if (status)
    goto exit;
   *value++ = ql_read32(qdev, MAC_ADDR_DATA);
   if (type == 131) {
    status =
        ql_wait_reg_rdy(qdev,
     MAC_ADDR_IDX, MAC_ADDR_MW, 0);
    if (status)
     goto exit;
    ql_write32(qdev, MAC_ADDR_IDX, (offset++) |
        (index << MAC_ADDR_IDX_SHIFT) |
        MAC_ADDR_ADR | MAC_ADDR_RS | type);
    status =
        ql_wait_reg_rdy(qdev, MAC_ADDR_IDX,
          MAC_ADDR_MR, 0);
    if (status)
     goto exit;
    *value++ = ql_read32(qdev, MAC_ADDR_DATA);
   }
   break;
  }
 case 128:
 case 130:
 default:
  netif_crit(qdev, ifup, qdev->ndev,
      "Address type %d not yet supported.\n", type);
  status = -EPERM;
 }
exit:
 return status;
}
