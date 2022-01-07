
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct flowi {int oif; int fl6_dst; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;


 int ENETUNREACH ;
 int IPV6_ADDR_LINKLOCAL ;
 int init_net ;
 struct dst_entry* ip6_route_output (int *,int *,struct flowi*) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;
 int memset (struct flowi*,int ,int) ;

__attribute__((used)) static int cnic_get_v6_route(struct sockaddr_in6 *dst_addr,
        struct dst_entry **dst)
{
 return -ENETUNREACH;
}
