
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2x_mcast_ramrod_params {int ramrod_flags; int * mcast_obj; } ;
struct TYPE_4__ {struct bnx2x_mcast_ramrod_params mcast; } ;
struct bnx2x_virtf {int mcast_obj; TYPE_1__ op_params; } ;
struct bnx2x_vfop_cmd {int block; int done; } ;
struct TYPE_5__ {int mc_num; struct bnx2x_mcast_list_elem* mc; } ;
struct TYPE_6__ {TYPE_2__ mc_list; } ;
struct bnx2x_vfop {TYPE_3__ args; } ;
struct bnx2x_mcast_list_elem {int mac; } ;
struct bnx2x {int dummy; } ;
typedef int bnx2x_mac_addr_t ;


 int BNX2X_VFOP_MCAST_DEL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RAMROD_DRV_CLR_ONLY ;
 struct bnx2x_vfop* bnx2x_vfop_add (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_mcast ;
 int bnx2x_vfop_opset (int ,int ,int ) ;
 int bnx2x_vfop_transition (struct bnx2x*,struct bnx2x_virtf*,int ,int ) ;
 int kfree (struct bnx2x_mcast_list_elem*) ;
 struct bnx2x_mcast_list_elem* kzalloc (size_t,int ) ;
 int memset (struct bnx2x_mcast_ramrod_params*,int ,int) ;
 int set_bit (int ,int *) ;

int bnx2x_vfop_mcast_cmd(struct bnx2x *bp,
    struct bnx2x_virtf *vf,
    struct bnx2x_vfop_cmd *cmd,
    bnx2x_mac_addr_t *mcasts,
    int mcast_num, bool drv_only)
{
 struct bnx2x_vfop *vfop = ((void*)0);
 size_t mc_sz = mcast_num * sizeof(struct bnx2x_mcast_list_elem);
 struct bnx2x_mcast_list_elem *mc = mc_sz ? kzalloc(mc_sz, GFP_KERNEL) :
        ((void*)0);

 if (!mc_sz || mc) {
  vfop = bnx2x_vfop_add(bp, vf);
  if (vfop) {
   int i;
   struct bnx2x_mcast_ramrod_params *ramrod =
    &vf->op_params.mcast;


   memset(ramrod, 0, sizeof(*ramrod));
   ramrod->mcast_obj = &vf->mcast_obj;
   if (drv_only)
    set_bit(RAMROD_DRV_CLR_ONLY,
     &ramrod->ramrod_flags);


   vfop->args.mc_list.mc_num = mcast_num;
   vfop->args.mc_list.mc = mc;
   for (i = 0; i < mcast_num; i++)
    mc[i].mac = mcasts[i];

   bnx2x_vfop_opset(BNX2X_VFOP_MCAST_DEL,
      bnx2x_vfop_mcast, cmd->done);
   return bnx2x_vfop_transition(bp, vf, bnx2x_vfop_mcast,
           cmd->block);
  } else {
   kfree(mc);
  }
 }
 return -ENOMEM;
}
