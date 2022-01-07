
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfpf_init_tlv {scalar_t__ sb_addr; int stats_addr; int spq_addr; } ;
struct bnx2x_virtf {int op_rc; int fw_stat_map; int spq_map; } ;
struct bnx2x_vf_mbx {TYPE_2__* msg; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct vfpf_init_tlv init; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int bnx2x_vf_init (struct bnx2x*,struct bnx2x_virtf*,int *) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vf_mbx_init_vf(struct bnx2x *bp, struct bnx2x_virtf *vf,
         struct bnx2x_vf_mbx *mbx)
{
 struct vfpf_init_tlv *init = &mbx->msg->req.init;


 vf->spq_map = init->spq_addr;
 vf->fw_stat_map = init->stats_addr;
 vf->op_rc = bnx2x_vf_init(bp, vf, (dma_addr_t *)init->sb_addr);


 bnx2x_vf_mbx_resp(bp, vf);
}
