
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bna_rxq {int dummy; } ;
struct TYPE_6__ {struct bna_rxq* hdr; struct bna_rxq* data; } ;
struct TYPE_5__ {struct bna_rxq* small; struct bna_rxq* large; } ;
struct TYPE_7__ {int * reserved; struct bna_rxq* only; } ;
struct TYPE_8__ {TYPE_2__ hds; TYPE_1__ slr; TYPE_3__ single; } ;
struct bna_rxp {int type; TYPE_4__ rxq; } ;






__attribute__((used)) static void
bna_rxp_add_rxqs(struct bna_rxp *rxp, struct bna_rxq *q0,
  struct bna_rxq *q1)
{
 switch (rxp->type) {
 case 129:
  rxp->rxq.single.only = q0;
  rxp->rxq.single.reserved = ((void*)0);
  break;
 case 128:
  rxp->rxq.slr.large = q0;
  rxp->rxq.slr.small = q1;
  break;
 case 130:
  rxp->rxq.hds.data = q0;
  rxp->rxq.hds.hdr = q1;
  break;
 default:
  break;
 }
}
