
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_filter_spec {int flags; scalar_t__ type; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 int EFX_BUG_ON_PARANOID (int) ;
 int EFX_FILTER_FLAG_RX ;
 scalar_t__ EFX_FILTER_TCP_WILD ;
 scalar_t__ EFX_FILTER_UDP_WILD ;
 scalar_t__ EFX_FILTER_UNSPEC ;
 int EINVAL ;
 int EPROTONOSUPPORT ;


 int __efx_filter_set_ipv4 (struct efx_filter_spec*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int efx_filter_set_ipv4_local(struct efx_filter_spec *spec, u8 proto,
         __be32 host, __be16 port)
{
 __be32 host1;
 __be16 port1;

 EFX_BUG_ON_PARANOID(!(spec->flags & EFX_FILTER_FLAG_RX));


 if (spec->type != EFX_FILTER_UNSPEC)
  return -EPROTONOSUPPORT;

 if (port == 0)
  return -EINVAL;

 switch (proto) {
 case 129:
  spec->type = EFX_FILTER_TCP_WILD;
  break;
 case 128:
  spec->type = EFX_FILTER_UDP_WILD;
  break;
 default:
  return -EPROTONOSUPPORT;
 }






 host1 = 0;
 if (proto != 128) {
  port1 = 0;
 } else {
  port1 = port;
  port = 0;
 }

 __efx_filter_set_ipv4(spec, host1, port1, host, port);
 return 0;
}
