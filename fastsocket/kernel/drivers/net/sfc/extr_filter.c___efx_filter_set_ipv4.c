
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int* data; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static inline void __efx_filter_set_ipv4(struct efx_filter_spec *spec,
      __be32 host1, __be16 port1,
      __be32 host2, __be16 port2)
{
 spec->data[0] = ntohl(host1) << 16 | ntohs(port1);
 spec->data[1] = ntohs(port2) << 16 | ntohl(host1) >> 16;
 spec->data[2] = ntohl(host2);
}
