
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_cmnd {TYPE_1__* hrrq; int queue; } ;
struct TYPE_2__ {int hrrq_free_q; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ipr_halt_done(struct ipr_cmnd *ipr_cmd)
{
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
}
