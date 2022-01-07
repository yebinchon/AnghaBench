
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_4__ sin_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_5__ {struct dst_entry dst; } ;
struct rtable {TYPE_1__ u; } ;
struct TYPE_6__ {int daddr; } ;
struct TYPE_7__ {TYPE_2__ ip4_u; } ;
struct flowi {TYPE_3__ nl_u; } ;
typedef int fl ;


 int ENETUNREACH ;
 int init_net ;
 int ip_route_output_key (int *,struct rtable**,struct flowi*) ;
 int memset (struct flowi*,int ,int) ;

__attribute__((used)) static int cnic_get_v4_route(struct sockaddr_in *dst_addr,
        struct dst_entry **dst)
{
 return -ENETUNREACH;

}
