
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ dword ;
struct TYPE_6__ {scalar_t__ serial; int Rc; scalar_t__ Req; } ;
struct TYPE_5__ {scalar_t__ logical_adapter_number; } ;
struct TYPE_7__ {TYPE_1__ info; int Rc; scalar_t__ Req; } ;
struct TYPE_8__ {TYPE_2__ GetSerial; TYPE_3__ xdi_logical_adapter_number; } ;
typedef TYPE_4__ IDI_SYNC_REQ ;
typedef int (* IDI_CALL ) (int *) ;
typedef int ENTITY ;


 int IDI_SYNC_REQ_GET_SERIAL ;
 int IDI_SYNC_REQ_XDI_GET_LOGICAL_ADAPTER_NUMBER ;
 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static int diva_get_idi_adapter_info (IDI_CALL request, dword* serial, dword* logical) {
  IDI_SYNC_REQ sync_req;

  sync_req.xdi_logical_adapter_number.Req = 0;
  sync_req.xdi_logical_adapter_number.Rc = IDI_SYNC_REQ_XDI_GET_LOGICAL_ADAPTER_NUMBER;
  (*request)((ENTITY *)&sync_req);
  *logical = sync_req.xdi_logical_adapter_number.info.logical_adapter_number;

  sync_req.GetSerial.Req = 0;
  sync_req.GetSerial.Rc = IDI_SYNC_REQ_GET_SERIAL;
  sync_req.GetSerial.serial = 0;
  (*request)((ENTITY *)&sync_req);
 *serial = sync_req.GetSerial.serial;

  return (0);
}
