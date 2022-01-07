
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int comp; int comp_status; } ;
struct TYPE_7__ {TYPE_2__ abt; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct TYPE_5__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_4__ srb_t ;


 int CS_TIMEOUT ;
 int complete (int *) ;

__attribute__((used)) static void
qlafx00_abort_iocb_timeout(void *data)
{
 srb_t *sp = (srb_t *)data;
 struct srb_iocb *abt = &sp->u.iocb_cmd;

 abt->u.abt.comp_status = CS_TIMEOUT;
 complete(&abt->u.abt.comp);
}
