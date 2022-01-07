
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int ip_addr; } ;
typedef TYPE_1__ FDHTServerInfo ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int fdht_cmp_by_ip_and_port_p(const void *p1, const void *p2)
{
 int res;

 res = strcmp(((FDHTServerInfo*)p1)->ip_addr, ((FDHTServerInfo*)p2)->ip_addr);

 if (res != 0)
 {
  return res;
 }

 return ((FDHTServerInfo*)p1)->port - ((FDHTServerInfo*)p2)->port;

}
