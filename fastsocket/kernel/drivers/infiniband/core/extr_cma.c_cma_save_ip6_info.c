
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; int sin6_addr; int sin6_family; } ;
struct TYPE_6__ {int dst_addr; int src_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct rdma_cm_id {TYPE_3__ route; } ;
struct TYPE_8__ {int ip6; } ;
struct TYPE_5__ {int ip6; } ;
struct cma_hdr {int port; TYPE_4__ src_addr; TYPE_1__ dst_addr; } ;



__attribute__((used)) static void cma_save_ip6_info(struct rdma_cm_id *id, struct rdma_cm_id *listen_id,
         struct cma_hdr *hdr)
{
 struct sockaddr_in6 *listen6, *ip6;

 listen6 = (struct sockaddr_in6 *) &listen_id->route.addr.src_addr;
 ip6 = (struct sockaddr_in6 *) &id->route.addr.src_addr;
 ip6->sin6_family = listen6->sin6_family;
 ip6->sin6_addr = hdr->dst_addr.ip6;
 ip6->sin6_port = listen6->sin6_port;

 ip6 = (struct sockaddr_in6 *) &id->route.addr.dst_addr;
 ip6->sin6_family = listen6->sin6_family;
 ip6->sin6_addr = hdr->src_addr.ip6;
 ip6->sin6_port = hdr->port;
}
