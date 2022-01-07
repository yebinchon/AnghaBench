
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_statetrans { ____Placeholder_ib_qp_statetrans } ib_qp_statetrans ;


 int EINVAL ;
 int IB_QPST_ANY2ERR ;
 int IB_QPST_ANY2RESET ;
 int IB_QPST_INIT2INIT ;
 int IB_QPST_INIT2RTR ;
 int IB_QPST_RESET2INIT ;
 int IB_QPST_RTR2RTS ;
 int IB_QPST_RTS2RTS ;
 int IB_QPST_RTS2SQD ;
 int IB_QPST_SQD2RTS ;
 int IB_QPST_SQE2RTS ;
__attribute__((used)) static inline enum ib_qp_statetrans get_modqp_statetrans(int ib_fromstate,
        int ib_tostate)
{
 int index = -EINVAL;
 switch (ib_tostate) {
 case 132:
  index = IB_QPST_ANY2RESET;
  break;
 case 133:
  switch (ib_fromstate) {
  case 132:
   index = IB_QPST_RESET2INIT;
   break;
  case 133:
   index = IB_QPST_INIT2INIT;
   break;
  }
  break;
 case 131:
  if (ib_fromstate == 133)
   index = IB_QPST_INIT2RTR;
  break;
 case 130:
  switch (ib_fromstate) {
  case 131:
   index = IB_QPST_RTR2RTS;
   break;
  case 130:
   index = IB_QPST_RTS2RTS;
   break;
  case 129:
   index = IB_QPST_SQD2RTS;
   break;
  case 128:
   index = IB_QPST_SQE2RTS;
   break;
  }
  break;
 case 129:
  if (ib_fromstate == 130)
   index = IB_QPST_RTS2SQD;
  break;
 case 128:
  break;
 case 134:
  index = IB_QPST_ANY2ERR;
  break;
 default:
  break;
 }
 return index;
}
