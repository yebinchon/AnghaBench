
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fc_rpsc_op_speed { ____Placeholder_fc_rpsc_op_speed } fc_rpsc_op_speed ;
typedef enum bfa_port_speed { ____Placeholder_bfa_port_speed } bfa_port_speed ;
 int RPSC_OP_SPEED_10G ;
 int RPSC_OP_SPEED_16G ;
 int RPSC_OP_SPEED_1G ;
 int RPSC_OP_SPEED_2G ;
 int RPSC_OP_SPEED_4G ;
 int RPSC_OP_SPEED_8G ;
 int RPSC_OP_SPEED_NOT_EST ;

__attribute__((used)) static inline enum fc_rpsc_op_speed
fc_bfa_speed_to_rpsc_operspeed(enum bfa_port_speed op_speed)
{
 switch (op_speed) {

 case 131:
  return RPSC_OP_SPEED_1G;

 case 130:
  return RPSC_OP_SPEED_2G;

 case 129:
  return RPSC_OP_SPEED_4G;

 case 128:
  return RPSC_OP_SPEED_8G;

 case 132:
  return RPSC_OP_SPEED_16G;

 case 133:
  return RPSC_OP_SPEED_10G;

 default:
  return RPSC_OP_SPEED_NOT_EST;
 }
}
