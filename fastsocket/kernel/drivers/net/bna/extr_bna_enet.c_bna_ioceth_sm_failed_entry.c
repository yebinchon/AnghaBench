
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {TYPE_1__* bna; } ;
struct TYPE_2__ {int bnad; } ;


 int bnad_cb_ioceth_failed (int ) ;

__attribute__((used)) static void
bna_ioceth_sm_failed_entry(struct bna_ioceth *ioceth)
{
 bnad_cb_ioceth_failed(ioceth->bna->bnad);
}
