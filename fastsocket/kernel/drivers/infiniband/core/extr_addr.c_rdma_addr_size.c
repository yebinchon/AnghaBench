
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr_ib {int dummy; } ;
struct sockaddr {int sa_family; } ;






int rdma_addr_size(struct sockaddr *addr)
{
 switch (addr->sa_family) {
 case 129:
  return sizeof(struct sockaddr_in);
 case 128:
  return sizeof(struct sockaddr_in6);
 case 130:
  return sizeof(struct sockaddr_ib);
 default:
  return 0;
 }
}
