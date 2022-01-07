
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_filter_spec {int type; } ;
typedef int __be32 ;
typedef int __be16 ;




 int EINVAL ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int __efx_filter_get_ipv4 (struct efx_filter_spec const*,int *,int *,int *,int *) ;

int efx_filter_get_ipv4_local(const struct efx_filter_spec *spec,
         u8 *proto, __be32 *host, __be16 *port)
{
 __be32 host1;
 __be16 port1;

 switch (spec->type) {
 case 129:
  *proto = IPPROTO_TCP;
  __efx_filter_get_ipv4(spec, &host1, &port1, host, port);
  return 0;
 case 128:
  *proto = IPPROTO_UDP;
  __efx_filter_get_ipv4(spec, &host1, port, host, &port1);
  return 0;
 default:
  return -EINVAL;
 }
}
