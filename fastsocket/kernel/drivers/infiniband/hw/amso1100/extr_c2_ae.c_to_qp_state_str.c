
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *to_qp_state_str(int state)
{
 switch (state) {
 case 130:
  return "C2_QP_STATE_IDLE";
 case 132:
  return "C2_QP_STATE_CONNECTING";
 case 129:
  return "C2_QP_STATE_RTS";
 case 133:
  return "C2_QP_STATE_CLOSING";
 case 128:
  return "C2_QP_STATE_TERMINATE";
 case 131:
  return "C2_QP_STATE_ERROR";
 default:
  return "<invalid QP state>";
 };
}
