
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ps; } ;
struct rdma_id_private {TYPE_1__ id; } ;
struct idr {int dummy; } ;






 struct idr ib_ps ;
 struct idr ipoib_ps ;
 struct idr tcp_ps ;
 struct idr udp_ps ;

__attribute__((used)) static struct idr *cma_select_inet_ps(struct rdma_id_private *id_priv)
{
 switch (id_priv->id.ps) {
 case 129:
  return &tcp_ps;
 case 128:
  return &udp_ps;
 case 130:
  return &ipoib_ps;
 case 131:
  return &ib_ps;
 default:
  return ((void*)0);
 }
}
