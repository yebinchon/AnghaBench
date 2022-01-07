
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct mi_pc_maint {int dummy; } ;
struct TYPE_11__ {int data_length; int status; TYPE_3__* data; } ;
struct TYPE_14__ {int (* DIRequest ) (TYPE_5__*,int *) ;int Initialized; } ;
struct TYPE_12__ {TYPE_1__ xdi_mbox; TYPE_5__ xdi_adapter; } ;
typedef TYPE_2__ diva_os_xdi_adapter_t ;
struct TYPE_13__ {int command; int rc; int req; } ;
typedef TYPE_3__ diva_get_xlog_t ;
typedef TYPE_3__ byte ;
typedef int ENTITY ;


 int DIVA_XDI_MBOX_BUSY ;
 int LOG ;
 int diva_os_free (int ,TYPE_3__*) ;
 TYPE_3__* diva_os_malloc (int ,int) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int memset (TYPE_3__*,int,int) ;
 int stub1 (TYPE_5__*,int *) ;

int diva_card_read_xlog(diva_os_xdi_adapter_t * a)
{
 diva_get_xlog_t *req;
 byte *data;

 if (!a->xdi_adapter.Initialized || !a->xdi_adapter.DIRequest) {
  return (-1);
 }
 if (!(data = diva_os_malloc(0, sizeof(struct mi_pc_maint)))) {
  return (-1);
 }
 memset(data, 0x00, sizeof(struct mi_pc_maint));

 if (!(req = diva_os_malloc(0, sizeof(*req)))) {
  diva_os_free(0, data);
  return (-1);
 }
 req->command = 0x0400;
 req->req = LOG;
 req->rc = 0x00;

 (*(a->xdi_adapter.DIRequest)) (&a->xdi_adapter, (ENTITY *) req);

 if (!req->rc || req->req) {
  diva_os_free(0, data);
  diva_os_free(0, req);
  return (-1);
 }

 memcpy(data, &req->req, sizeof(struct mi_pc_maint));

 diva_os_free(0, req);

 a->xdi_mbox.data_length = sizeof(struct mi_pc_maint);
 a->xdi_mbox.data = data;
 a->xdi_mbox.status = DIVA_XDI_MBOX_BUSY;

 return (0);
}
