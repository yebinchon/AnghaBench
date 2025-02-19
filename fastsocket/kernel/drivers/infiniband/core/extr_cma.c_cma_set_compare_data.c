
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in6_addr {scalar_t__ mask; scalar_t__ data; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ib_cm_compare_data {scalar_t__ mask; scalar_t__ data; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {struct in6_addr ip6; TYPE_2__ ip4; } ;
struct cma_hdr {TYPE_3__ dst_addr; } ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef int __be32 ;




 int cma_any_addr (struct sockaddr*) ;
 int cma_set_ip_ver (struct cma_hdr*,int) ;
 int htonl (int ) ;
 int memset (struct in6_addr*,int,int) ;

__attribute__((used)) static void cma_set_compare_data(enum rdma_port_space ps, struct sockaddr *addr,
     struct ib_cm_compare_data *compare)
{
 struct cma_hdr *cma_data, *cma_mask;
 __be32 ip4_addr;
 struct in6_addr ip6_addr;

 memset(compare, 0, sizeof *compare);
 cma_data = (void *) compare->data;
 cma_mask = (void *) compare->mask;

 switch (addr->sa_family) {
 case 129:
  ip4_addr = ((struct sockaddr_in *) addr)->sin_addr.s_addr;
  cma_set_ip_ver(cma_data, 4);
  cma_set_ip_ver(cma_mask, 0xF);
  if (!cma_any_addr(addr)) {
   cma_data->dst_addr.ip4.addr = ip4_addr;
   cma_mask->dst_addr.ip4.addr = htonl(~0);
  }
  break;
 case 128:
  ip6_addr = ((struct sockaddr_in6 *) addr)->sin6_addr;
  cma_set_ip_ver(cma_data, 6);
  cma_set_ip_ver(cma_mask, 0xF);
  if (!cma_any_addr(addr)) {
   cma_data->dst_addr.ip6 = ip6_addr;
   memset(&cma_mask->dst_addr.ip6, 0xFF,
          sizeof cma_mask->dst_addr.ip6);
  }
  break;
 default:
  break;
 }
}
