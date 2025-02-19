
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ sdram_bar; scalar_t__ Id; int (* request ) (TYPE_4__*) ;} ;
struct TYPE_12__ {scalar_t__* user; } ;
struct TYPE_9__ {scalar_t__ bar; } ;
struct TYPE_10__ {TYPE_1__ info; int Rc; scalar_t__ Req; } ;
struct TYPE_11__ {TYPE_2__ xdi_sdram_bar; } ;
typedef TYPE_3__ IDI_SYNC_REQ ;
typedef TYPE_4__ ENTITY ;
typedef TYPE_5__ DIVA_CAPI_ADAPTER ;


 int DIVA_CAPI_XDI_PROVIDES_SDRAM_BAR ;
 int IDI_SYNC_REQ_XDI_GET_ADAPTER_SDRAM_BAR ;
 int dbug (int,int ) ;
 int diva_xdi_extended_features ;
 int dprintf (char*,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void diva_ask_for_xdi_sdram_bar (DIVA_CAPI_ADAPTER * a,
                                        IDI_SYNC_REQ * preq) {
  a->sdram_bar = 0;
  if (diva_xdi_extended_features & DIVA_CAPI_XDI_PROVIDES_SDRAM_BAR) {
    ENTITY * e = (ENTITY *)preq;

    e->user[0] = a->Id - 1;
    preq->xdi_sdram_bar.info.bar = 0;
    preq->xdi_sdram_bar.Req = 0;
    preq->xdi_sdram_bar.Rc = IDI_SYNC_REQ_XDI_GET_ADAPTER_SDRAM_BAR;

    (*(a->request))(e);

    a->sdram_bar = preq->xdi_sdram_bar.info.bar;
    dbug(3,dprintf("A(%d) SDRAM BAR = %08x", a->Id, a->sdram_bar));
  }
}
