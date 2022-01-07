
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct srb_iocb {int (* timeout ) (TYPE_2__*) ;} ;
struct req_que {int ** outstanding_cmds; } ;
struct qla_hw_data {int hardware_lock; struct req_que** req_q_map; } ;
struct TYPE_7__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_8__ {size_t handle; int (* free ) (TYPE_4__*,TYPE_2__*) ;TYPE_1__ u; TYPE_3__* fcport; } ;
typedef TYPE_2__ srb_t ;
struct TYPE_9__ {TYPE_4__* vha; } ;
typedef TYPE_3__ fc_port_t ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_4__*,TYPE_2__*) ;

void
qla2x00_sp_timeout(unsigned long __data)
{
 srb_t *sp = (srb_t *)__data;
 struct srb_iocb *iocb;
 fc_port_t *fcport = sp->fcport;
 struct qla_hw_data *ha = fcport->vha->hw;
 struct req_que *req;
 unsigned long flags;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 req = ha->req_q_map[0];
 req->outstanding_cmds[sp->handle] = ((void*)0);
 iocb = &sp->u.iocb_cmd;
 iocb->timeout(sp);
 sp->free(fcport->vha, sp);

 spin_unlock_irqrestore(&ha->hardware_lock, flags);
}
