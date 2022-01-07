
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int fxiocb_comp; } ;
struct TYPE_14__ {TYPE_3__ fxiocb; } ;
struct TYPE_18__ {unsigned long data; int function; scalar_t__ expires; } ;
struct TYPE_15__ {TYPE_4__ u; TYPE_9__ timer; } ;
struct TYPE_16__ {TYPE_5__ iocb_cmd; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_6__ u; TYPE_2__* fcport; int free; } ;
typedef TYPE_7__ srb_t ;
struct TYPE_12__ {TYPE_1__* vha; } ;
struct TYPE_11__ {int hw; } ;


 unsigned long HZ ;
 scalar_t__ IS_QLAFX00 (int ) ;
 scalar_t__ SRB_FXIOCB_DCMD ;
 int add_timer (TYPE_9__*) ;
 int init_completion (int *) ;
 int init_timer (TYPE_9__*) ;
 scalar_t__ jiffies ;
 int qla2x00_sp_free ;
 int qla2x00_sp_timeout ;

__attribute__((used)) static inline void
qla2x00_init_timer(srb_t *sp, unsigned long tmo)
{
 init_timer(&sp->u.iocb_cmd.timer);
 sp->u.iocb_cmd.timer.expires = jiffies + tmo * HZ;
 sp->u.iocb_cmd.timer.data = (unsigned long)sp;
 sp->u.iocb_cmd.timer.function = qla2x00_sp_timeout;
 add_timer(&sp->u.iocb_cmd.timer);
 sp->free = qla2x00_sp_free;
 if ((IS_QLAFX00(sp->fcport->vha->hw)) &&
     (sp->type == SRB_FXIOCB_DCMD))
  init_completion(&sp->u.iocb_cmd.u.fxiocb.fxiocb_comp);
}
