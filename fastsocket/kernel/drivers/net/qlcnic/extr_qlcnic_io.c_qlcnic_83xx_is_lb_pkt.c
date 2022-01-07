
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int QLC_83XX_LRO_LB_PKT ;
 int QLC_83XX_NORMAL_LB_PKT ;

__attribute__((used)) static inline int qlcnic_83xx_is_lb_pkt(u64 sts_data, int lro_pkt)
{
 if (lro_pkt)
  return (sts_data & QLC_83XX_LRO_LB_PKT) ? 1 : 0;
 else
  return (sts_data & QLC_83XX_NORMAL_LB_PKT) ? 1 : 0;
}
