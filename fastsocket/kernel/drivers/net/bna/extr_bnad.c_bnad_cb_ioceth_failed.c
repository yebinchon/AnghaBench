
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_comp; int ioc_comp_status; } ;
struct bnad {TYPE_1__ bnad_completions; } ;


 int BNA_CB_FAIL ;
 int complete (int *) ;

void
bnad_cb_ioceth_failed(struct bnad *bnad)
{
 bnad->bnad_completions.ioc_comp_status = BNA_CB_FAIL;
 complete(&bnad->bnad_completions.ioc_comp);
}
