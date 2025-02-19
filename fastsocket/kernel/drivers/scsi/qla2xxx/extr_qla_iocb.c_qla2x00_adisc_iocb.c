
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {int async_pd_dma; } ;
struct mbx_entry {void* mb9; void* mb7; void* mb6; void* mb3; void* mb2; void* mb1; void* mb10; void* mb0; int loop_id; int entry_type; } ;
struct TYPE_7__ {TYPE_2__* fcport; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_6__ {int loop_id; TYPE_1__* vha; } ;
struct TYPE_5__ {int vp_idx; struct qla_hw_data* hw; } ;


 int BIT_0 ;
 scalar_t__ HAS_EXTENDED_IDS (struct qla_hw_data*) ;
 int LSW (int ) ;
 int MBC_GET_PORT_DATABASE ;
 int MBX_IOCB_TYPE ;
 int MSD (int ) ;
 int MSW (int ) ;
 int SET_TARGET_ID (struct qla_hw_data*,int ,int) ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void
qla2x00_adisc_iocb(srb_t *sp, struct mbx_entry *mbx)
{
 struct qla_hw_data *ha = sp->fcport->vha->hw;

 mbx->entry_type = MBX_IOCB_TYPE;
 SET_TARGET_ID(ha, mbx->loop_id, sp->fcport->loop_id);
 mbx->mb0 = cpu_to_le16(MBC_GET_PORT_DATABASE);
 if (HAS_EXTENDED_IDS(ha)) {
  mbx->mb1 = cpu_to_le16(sp->fcport->loop_id);
  mbx->mb10 = cpu_to_le16(BIT_0);
 } else {
  mbx->mb1 = cpu_to_le16((sp->fcport->loop_id << 8) | BIT_0);
 }
 mbx->mb2 = cpu_to_le16(MSW(ha->async_pd_dma));
 mbx->mb3 = cpu_to_le16(LSW(ha->async_pd_dma));
 mbx->mb6 = cpu_to_le16(MSW(MSD(ha->async_pd_dma)));
 mbx->mb7 = cpu_to_le16(LSW(MSD(ha->async_pd_dma)));
 mbx->mb9 = cpu_to_le16(sp->fcport->vha->vp_idx);
}
