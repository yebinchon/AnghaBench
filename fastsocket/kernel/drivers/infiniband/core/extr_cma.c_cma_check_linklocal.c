
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; } ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int IPV6_ADDR_LINKLOCAL ;
 int ipv6_addr_type (int *) ;

__attribute__((used)) static int cma_check_linklocal(struct rdma_dev_addr *dev_addr,
          struct sockaddr *addr)
{
 return 0;
}
