
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int ndev; } ;


 int EINVAL ;
 int EPERM ;
 int RT_DATA ;
 int RT_IDX ;
 int RT_IDX_ALLMULTI_SLOT ;
 int RT_IDX_ALL_ERR_SLOT ;

 int RT_IDX_BCAST_SLOT ;

 int RT_IDX_CAM_HIT_SLOT ;
 int RT_IDX_DST_CAM_Q ;
 int RT_IDX_DST_DFLT_Q ;
 int RT_IDX_DST_RSS ;
 int RT_IDX_E ;

 int RT_IDX_IDX_SHIFT ;

 int RT_IDX_IP_CSUM_ERR_SLOT ;


 int RT_IDX_MCAST_MATCH_SLOT ;
 int RT_IDX_MW ;
 int RT_IDX_PROMISCUOUS_SLOT ;

 int RT_IDX_RSS_MATCH_SLOT ;
 int RT_IDX_TCP_UDP_CSUM_ERR_SLOT ;

 int RT_IDX_TYPE_NICQ ;

 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_set_routing_reg(struct ql_adapter *qdev, u32 index, u32 mask,
         int enable)
{
 int status = -EINVAL;
 u32 value = 0;

 switch (mask) {
 case 135:
  {
   value = RT_IDX_DST_CAM_Q |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_CAM_HIT_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 128:
  {
   value = RT_IDX_DST_DFLT_Q |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_PROMISCUOUS_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 134:
  {
   value = RT_IDX_DST_DFLT_Q |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_ALL_ERR_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 133:
  {
   value = RT_IDX_DST_DFLT_Q |
    RT_IDX_TYPE_NICQ |
    (RT_IDX_IP_CSUM_ERR_SLOT <<
    RT_IDX_IDX_SHIFT);
   break;
  }
 case 129:
  {
   value = RT_IDX_DST_DFLT_Q |
    RT_IDX_TYPE_NICQ |
    (RT_IDX_TCP_UDP_CSUM_ERR_SLOT <<
    RT_IDX_IDX_SHIFT);
   break;
  }
 case 136:
  {
   value = RT_IDX_DST_DFLT_Q |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_BCAST_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 132:
  {
   value = RT_IDX_DST_DFLT_Q |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_ALLMULTI_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 131:
  {
   value = RT_IDX_DST_DFLT_Q |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_MCAST_MATCH_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 130:
  {
   value = RT_IDX_DST_RSS |
       RT_IDX_TYPE_NICQ |
       (RT_IDX_RSS_MATCH_SLOT << RT_IDX_IDX_SHIFT);
   break;
  }
 case 0:
  {
   value = RT_IDX_DST_DFLT_Q |
       RT_IDX_TYPE_NICQ |
       (index << RT_IDX_IDX_SHIFT);
   break;
  }
 default:
  netif_err(qdev, ifup, qdev->ndev,
     "Mask type %d not yet supported.\n", mask);
  status = -EPERM;
  goto exit;
 }

 if (value) {
  status = ql_wait_reg_rdy(qdev, RT_IDX, RT_IDX_MW, 0);
  if (status)
   goto exit;
  value |= (enable ? RT_IDX_E : 0);
  ql_write32(qdev, RT_IDX, value);
  ql_write32(qdev, RT_DATA, enable ? mask : 0);
 }
exit:
 return status;
}
