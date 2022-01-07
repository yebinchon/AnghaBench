
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int dummy; } ;


 int bna_bfi_attr_get (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_enet_attr_wait_entry(struct bna_ioceth *ioceth)
{
 bna_bfi_attr_get(ioceth);
}
