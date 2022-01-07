
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int comp; } ;
struct TYPE_7__ {TYPE_2__ abt; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct TYPE_5__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_4__ srb_t ;


 int complete (int *) ;

__attribute__((used)) static void
qlafx00_abort_sp_done(void *data, void *ptr, int res)
{
 srb_t *sp = (srb_t *)ptr;
 struct srb_iocb *abt = &sp->u.iocb_cmd;

 complete(&abt->u.abt.comp);
}
