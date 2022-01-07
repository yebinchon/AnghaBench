
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fc_rpsc_op_speed { ____Placeholder_fc_rpsc_op_speed } fc_rpsc_op_speed ;
typedef enum bfa_port_speed { ____Placeholder_bfa_port_speed } bfa_port_speed ;


 int BFA_PORT_SPEED_10GBPS ;
 int BFA_PORT_SPEED_16GBPS ;
 int BFA_PORT_SPEED_1GBPS ;
 int BFA_PORT_SPEED_2GBPS ;
 int BFA_PORT_SPEED_4GBPS ;
 int BFA_PORT_SPEED_8GBPS ;
 int BFA_PORT_SPEED_UNKNOWN ;







__attribute__((used)) static inline enum bfa_port_speed
fc_rpsc_operspeed_to_bfa_speed(enum fc_rpsc_op_speed speed)
{
 switch (speed) {

 case 131:
  return BFA_PORT_SPEED_1GBPS;

 case 130:
  return BFA_PORT_SPEED_2GBPS;

 case 129:
  return BFA_PORT_SPEED_4GBPS;

 case 128:
  return BFA_PORT_SPEED_8GBPS;

 case 132:
  return BFA_PORT_SPEED_16GBPS;

 case 133:
  return BFA_PORT_SPEED_10GBPS;

 default:
  return BFA_PORT_SPEED_UNKNOWN;
 }
}
