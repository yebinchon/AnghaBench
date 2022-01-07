
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct obj_mlme {scalar_t__ state; int code; int address; } ;
struct TYPE_5__ {int acl; } ;
typedef TYPE_1__ islpci_private ;
typedef enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;


 scalar_t__ DOT11_STATE_ASSOCING ;
 scalar_t__ DOT11_STATE_AUTHING ;
 scalar_t__ mgt_mlme_answer (TYPE_1__*) ;
 int mgt_set_request (TYPE_1__*,int,int ,struct obj_mlme*) ;
 scalar_t__ prism54_mac_accept (int *,int ) ;

__attribute__((used)) static void
handle_request(islpci_private *priv, struct obj_mlme *mlme, enum oid_num_t oid)
{
 if (((mlme->state == DOT11_STATE_AUTHING) ||
      (mlme->state == DOT11_STATE_ASSOCING))
     && mgt_mlme_answer(priv)) {



  mlme->code = prism54_mac_accept(&priv->acl,
      mlme->address) ? 0 : 1;
  mgt_set_request(priv, oid, 0, mlme);
 }
}
