
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int* data; } ;
typedef int __be32 ;
typedef int __be16 ;


 int htonl (int) ;
 int htons (int) ;

__attribute__((used)) static inline void __efx_filter_get_ipv4(const struct efx_filter_spec *spec,
      __be32 *host1, __be16 *port1,
      __be32 *host2, __be16 *port2)
{
 *host1 = htonl(spec->data[0] >> 16 | spec->data[1] << 16);
 *port1 = htons(spec->data[0]);
 *host2 = htonl(spec->data[2]);
 *port2 = htons(spec->data[1] >> 16);
}
