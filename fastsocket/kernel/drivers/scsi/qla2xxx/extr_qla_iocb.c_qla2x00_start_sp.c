
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct qla_hw_data {int hardware_lock; int * req_q_map; } ;
struct TYPE_22__ {int type; TYPE_1__* fcport; } ;
typedef TYPE_2__ srb_t ;
struct TYPE_23__ {struct qla_hw_data* hw; } ;
struct TYPE_21__ {TYPE_7__* vha; } ;


 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int IS_QLAFX00 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int ql_log (int ,TYPE_7__*,int,char*) ;
 int ql_log_warn ;
 int qla24xx_adisc_iocb (TYPE_2__*,void*) ;
 int qla24xx_ct_iocb (TYPE_2__*,void*) ;
 int qla24xx_els_iocb (TYPE_2__*,void*) ;
 int qla24xx_login_iocb (TYPE_2__*,void*) ;
 int qla24xx_logout_iocb (TYPE_2__*,void*) ;
 int qla24xx_tm_iocb (TYPE_2__*,void*) ;
 int qla2x00_adisc_iocb (TYPE_2__*,void*) ;
 void* qla2x00_alloc_iocbs (TYPE_7__*,TYPE_2__*) ;
 int qla2x00_ct_iocb (TYPE_2__*,void*) ;
 int qla2x00_login_iocb (TYPE_2__*,void*) ;
 int qla2x00_logout_iocb (TYPE_2__*,void*) ;
 int qla2x00_start_iocbs (TYPE_7__*,int ) ;
 int qlafx00_abort_iocb (TYPE_2__*,void*) ;
 int qlafx00_fxdisc_iocb (TYPE_2__*,void*) ;
 int qlafx00_tm_iocb (TYPE_2__*,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

int
qla2x00_start_sp(srb_t *sp)
{
 int rval;
 struct qla_hw_data *ha = sp->fcport->vha->hw;
 void *pkt;
 unsigned long flags;

 rval = QLA_FUNCTION_FAILED;
 spin_lock_irqsave(&ha->hardware_lock, flags);
 pkt = qla2x00_alloc_iocbs(sp->fcport->vha, sp);
 if (!pkt) {
  ql_log(ql_log_warn, sp->fcport->vha, 0x700c,
      "qla2x00_alloc_iocbs failed.\n");
  goto done;
 }

 rval = QLA_SUCCESS;
 switch (sp->type) {
 case 130:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_login_iocb(sp, pkt):
      qla2x00_login_iocb(sp, pkt);
  break;
 case 129:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_logout_iocb(sp, pkt):
      qla2x00_logout_iocb(sp, pkt);
  break;
 case 133:
 case 134:
  qla24xx_els_iocb(sp, pkt);
  break;
 case 135:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_ct_iocb(sp, pkt) :
      qla2x00_ct_iocb(sp, pkt);
  break;
 case 136:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_adisc_iocb(sp, pkt):
      qla2x00_adisc_iocb(sp, pkt);
  break;
 case 128:
  IS_QLAFX00(ha) ?
      qlafx00_tm_iocb(sp, pkt) :
      qla24xx_tm_iocb(sp, pkt);
  break;
 case 131:
 case 132:
  qlafx00_fxdisc_iocb(sp, pkt);
  break;
 case 137:
  qlafx00_abort_iocb(sp, pkt);
  break;
 default:
  break;
 }

 wmb();
 qla2x00_start_iocbs(sp->fcport->vha, ha->req_q_map[0]);
done:
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 return rval;
}
