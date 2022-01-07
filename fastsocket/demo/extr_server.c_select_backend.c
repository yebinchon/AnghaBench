
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct TYPE_2__ {int param_port; int param_ip; int proxyip; } ;


 int AF_INET ;
 int htons (int ) ;
 TYPE_1__* pa ;
 int pa_num ;
 int print_d (char*,int ,int ) ;

__attribute__((used)) static void select_backend(struct sockaddr_in *addr)
{
 static int last;

 addr->sin_family = AF_INET;
 addr->sin_port = htons(pa[last].param_port);
 addr->sin_addr = pa[last].proxyip;

 print_d("Select Back-end server %s:%d\n", pa[last].param_ip,
  pa[last].param_port);

 last++;

 if (last == pa_num)
  last = 0;
}
