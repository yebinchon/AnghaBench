
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ EHEA_BMASK_GET (int ,unsigned long) ;
 long H_AUTHORITY ;
 long H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 int H_MEHEAPORT_CAT ;
 unsigned long H_MODIFY_HEA_PORT ;
 scalar_t__ H_PORT_CB4 ;
 unsigned long H_PORT_CB4_JUMBO ;
 unsigned long H_PORT_CB4_SPEED ;
 scalar_t__ H_PORT_CB7 ;
 unsigned long H_PORT_CB7_DUCQPN ;
 long H_SUCCESS ;
 int ehea_error (char*,unsigned long,long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int get_longbusy_msecs (long) ;
 int msleep_interruptible (int) ;
 long plpar_hcall9 (unsigned long,unsigned long*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static long ehea_plpar_hcall9(unsigned long opcode,
         unsigned long *outs,
         unsigned long arg1,
         unsigned long arg2,
         unsigned long arg3,
         unsigned long arg4,
         unsigned long arg5,
         unsigned long arg6,
         unsigned long arg7,
         unsigned long arg8,
         unsigned long arg9)
{
 long ret;
 int i, sleep_msecs;
 u8 cb_cat;

 for (i = 0; i < 5; i++) {
  ret = plpar_hcall9(opcode, outs,
       arg1, arg2, arg3, arg4, arg5,
       arg6, arg7, arg8, arg9);

  if (H_IS_LONG_BUSY(ret)) {
   sleep_msecs = get_longbusy_msecs(ret);
   msleep_interruptible(sleep_msecs);
   continue;
  }

  cb_cat = EHEA_BMASK_GET(H_MEHEAPORT_CAT, arg2);

  if ((ret < H_SUCCESS) && !(((ret == H_AUTHORITY)
      && (opcode == H_MODIFY_HEA_PORT))
      && (((cb_cat == H_PORT_CB4) && ((arg3 == H_PORT_CB4_JUMBO)
      || (arg3 == H_PORT_CB4_SPEED))) || ((cb_cat == H_PORT_CB7)
      && (arg3 == H_PORT_CB7_DUCQPN)))))
   ehea_error("opcode=%lx ret=%lx"
       " arg1=%lx arg2=%lx arg3=%lx arg4=%lx"
       " arg5=%lx arg6=%lx arg7=%lx arg8=%lx"
       " arg9=%lx"
       " out1=%lx out2=%lx out3=%lx out4=%lx"
       " out5=%lx out6=%lx out7=%lx out8=%lx"
       " out9=%lx",
       opcode, ret,
       arg1, arg2, arg3, arg4, arg5,
       arg6, arg7, arg8, arg9,
       outs[0], outs[1], outs[2], outs[3],
       outs[4], outs[5], outs[6], outs[7],
       outs[8]);
  return ret;
 }

 return H_BUSY;
}
