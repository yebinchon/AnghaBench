
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct logio_entry_24xx {int vp_index; void* nport_handle; void* control_flags; int entry_type; } ;
struct TYPE_7__ {TYPE_2__* fcport; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_6__ {TYPE_1__* vha; int loop_id; } ;
struct TYPE_5__ {int vp_idx; } ;


 int LCF_COMMAND_ADISC ;
 int LOGINOUT_PORT_IOCB_TYPE ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static void
qla24xx_adisc_iocb(srb_t *sp, struct logio_entry_24xx *logio)
{
 logio->entry_type = LOGINOUT_PORT_IOCB_TYPE;
 logio->control_flags = cpu_to_le16(LCF_COMMAND_ADISC);
 logio->nport_handle = cpu_to_le16(sp->fcport->loop_id);
 logio->vp_index = sp->fcport->vha->vp_idx;
}
