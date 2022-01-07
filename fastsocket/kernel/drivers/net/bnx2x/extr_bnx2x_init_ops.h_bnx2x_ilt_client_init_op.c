
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ilt_client_info {int dummy; } ;
struct bnx2x_ilt {int dummy; } ;
struct bnx2x {int dummy; } ;


 struct bnx2x_ilt* BP_ILT (struct bnx2x*) ;
 int bnx2x_ilt_client_init_op_ilt (struct bnx2x*,struct bnx2x_ilt*,struct ilt_client_info*,int ) ;

__attribute__((used)) static void bnx2x_ilt_client_init_op(struct bnx2x *bp,
         struct ilt_client_info *ilt_cli, u8 initop)
{
 struct bnx2x_ilt *ilt = BP_ILT(bp);

 bnx2x_ilt_client_init_op_ilt(bp, ilt, ilt_cli, initop);
}
