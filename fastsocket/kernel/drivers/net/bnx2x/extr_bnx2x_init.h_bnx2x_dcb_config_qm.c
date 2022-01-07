
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_cos {int cos; } ;
struct bnx2x {int dummy; } ;
typedef enum cos_mode { ____Placeholder_cos_mode } cos_mode ;


 int BNX2X_ETH_Q ;
 int BNX2X_FCOE_Q ;
 int BNX2X_ISCSI_ACK_Q ;
 int BNX2X_ISCSI_Q ;
 int BNX2X_TOE_ACK_Q ;
 int BNX2X_TOE_Q ;
 size_t LLFC_TRAFFIC_TYPE_FCOE ;
 size_t LLFC_TRAFFIC_TYPE_ISCSI ;
 size_t LLFC_TRAFFIC_TYPE_NW ;
 int STATIC_COS ;
 int bnx2x_map_q_cos (struct bnx2x*,int ,int ) ;

__attribute__((used)) static inline void bnx2x_dcb_config_qm(struct bnx2x *bp, enum cos_mode mode,
           struct priority_cos *traffic_cos)
{
 bnx2x_map_q_cos(bp, BNX2X_FCOE_Q,
   traffic_cos[LLFC_TRAFFIC_TYPE_FCOE].cos);
 bnx2x_map_q_cos(bp, BNX2X_ISCSI_Q,
   traffic_cos[LLFC_TRAFFIC_TYPE_ISCSI].cos);
 bnx2x_map_q_cos(bp, BNX2X_ISCSI_ACK_Q,
  traffic_cos[LLFC_TRAFFIC_TYPE_ISCSI].cos);
 if (mode != STATIC_COS) {

  bnx2x_map_q_cos(bp, BNX2X_ETH_Q,
    traffic_cos[LLFC_TRAFFIC_TYPE_NW].cos);
  bnx2x_map_q_cos(bp, BNX2X_TOE_Q,
    traffic_cos[LLFC_TRAFFIC_TYPE_NW].cos);
  bnx2x_map_q_cos(bp, BNX2X_TOE_ACK_Q,
    traffic_cos[LLFC_TRAFFIC_TYPE_NW].cos);
 }
}
