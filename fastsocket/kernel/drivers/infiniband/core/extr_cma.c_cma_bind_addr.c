
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_scope_id; } ;
struct sockaddr_ib {int sib_pkey; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_4__ {int src_addr; } ;
struct TYPE_3__ {TYPE_2__ addr; } ;
struct rdma_cm_id {TYPE_1__ route; } ;


 scalar_t__ AF_IB ;
 scalar_t__ AF_INET6 ;
 int rdma_bind_addr (struct rdma_cm_id*,struct sockaddr*) ;

__attribute__((used)) static int cma_bind_addr(struct rdma_cm_id *id, struct sockaddr *src_addr,
    struct sockaddr *dst_addr)
{
 if (!src_addr || !src_addr->sa_family) {
  src_addr = (struct sockaddr *) &id->route.addr.src_addr;
  src_addr->sa_family = dst_addr->sa_family;
  if (dst_addr->sa_family == AF_INET6) {
   ((struct sockaddr_in6 *) src_addr)->sin6_scope_id =
    ((struct sockaddr_in6 *) dst_addr)->sin6_scope_id;
  } else if (dst_addr->sa_family == AF_IB) {
   ((struct sockaddr_ib *) src_addr)->sib_pkey =
    ((struct sockaddr_ib *) dst_addr)->sib_pkey;
  }
 }
 return rdma_bind_addr(id, src_addr);
}
