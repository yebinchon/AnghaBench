
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* request ) (int *) ;int channels; int features; int type; } ;
struct TYPE_12__ {TYPE_2__ d; } ;
typedef TYPE_4__ diva_um_idi_adapter_t ;
struct TYPE_13__ {scalar_t__ serial_number; int name; int channels; int features; int type; } ;
typedef TYPE_5__ diva_um_idi_adapter_features_t ;
struct TYPE_11__ {scalar_t__ serial; int Rc; scalar_t__ Req; } ;
struct TYPE_9__ {int name; int Rc; scalar_t__ Req; } ;
struct TYPE_14__ {TYPE_3__ GetSerial; TYPE_1__ GetName; } ;
typedef TYPE_6__ IDI_SYNC_REQ ;
typedef int ENTITY ;


 int IDI_SYNC_REQ_GET_NAME ;
 int IDI_SYNC_REQ_GET_SERIAL ;
 int memset (int ,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static int
diva_user_mode_idi_adapter_features(diva_um_idi_adapter_t * a,
        diva_um_idi_adapter_features_t *
        features)
{
 IDI_SYNC_REQ sync_req;

 if ((a) && (a->d.request)) {
  features->type = a->d.type;
  features->features = a->d.features;
  features->channels = a->d.channels;
  memset(features->name, 0, sizeof(features->name));

  sync_req.GetName.Req = 0;
  sync_req.GetName.Rc = IDI_SYNC_REQ_GET_NAME;
  (*(a->d.request)) ((ENTITY *) & sync_req);
  strlcpy(features->name, sync_req.GetName.name,
   sizeof(features->name));

  sync_req.GetSerial.Req = 0;
  sync_req.GetSerial.Rc = IDI_SYNC_REQ_GET_SERIAL;
  sync_req.GetSerial.serial = 0;
  (*(a->d.request)) ((ENTITY *) & sync_req);
  features->serial_number = sync_req.GetSerial.serial;
 }

 return ((a) ? 0 : -1);
}
