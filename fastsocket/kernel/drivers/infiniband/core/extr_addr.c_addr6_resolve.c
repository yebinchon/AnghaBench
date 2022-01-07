
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;


 int EADDRNOTAVAIL ;

__attribute__((used)) static int addr6_resolve(struct sockaddr_in6 *src_in,
    struct sockaddr_in6 *dst_in,
    struct rdma_dev_addr *addr)
{
 return -EADDRNOTAVAIL;
}
