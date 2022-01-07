
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void (* tx ) (void*,struct sk_buff*,int,int) ;int rx; struct ath9k_htc_priv* priv; } ;
struct htc_service_connreq {TYPE_1__ ep_callbacks; int service_id; } ;
struct ath9k_htc_priv {int htc; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int ath9k_htc_rxep ;
 int htc_connect_service (int ,struct htc_service_connreq*,int*) ;
 int memset (struct htc_service_connreq*,int ,int) ;

__attribute__((used)) static inline int ath9k_htc_connect_svc(struct ath9k_htc_priv *priv,
     u16 service_id,
     void (*tx) (void *,
          struct sk_buff *,
          enum htc_endpoint_id,
          bool txok),
     enum htc_endpoint_id *ep_id)
{
 struct htc_service_connreq req;

 memset(&req, 0, sizeof(struct htc_service_connreq));

 req.service_id = service_id;
 req.ep_callbacks.priv = priv;
 req.ep_callbacks.rx = ath9k_htc_rxep;
 req.ep_callbacks.tx = tx;

 return htc_connect_service(priv->htc, &req, ep_id);
}
