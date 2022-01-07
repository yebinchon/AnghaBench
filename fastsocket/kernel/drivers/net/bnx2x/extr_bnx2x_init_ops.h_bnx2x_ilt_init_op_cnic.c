
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 scalar_t__ CONFIGURE_NIC_MODE (struct bnx2x*) ;
 int ILT_CLIENT_SRC ;
 int ILT_CLIENT_TM ;
 int bnx2x_ilt_client_id_init_op (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_ilt_init_op_cnic(struct bnx2x *bp, u8 initop)
{
 if (CONFIGURE_NIC_MODE(bp))
  bnx2x_ilt_client_id_init_op(bp, ILT_CLIENT_SRC, initop);
 bnx2x_ilt_client_id_init_op(bp, ILT_CLIENT_TM, initop);
}
