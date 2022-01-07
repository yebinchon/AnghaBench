
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct proto {int pid; int state; TYPE_1__ timer; struct net_device* dev; } ;
struct ppp {struct proto* protos; } ;
struct net_device {int dummy; } ;


 int CLOSED ;
 int IDX_COUNT ;
 size_t IDX_IPCP ;
 size_t IDX_IPV6CP ;
 size_t IDX_LCP ;
 int PID_IPCP ;
 int PID_IPV6CP ;
 int PID_LCP ;
 int START ;
 struct ppp* get_ppp (struct net_device*) ;
 int init_timer (TYPE_1__*) ;
 int ppp_cp_event (struct net_device*,int ,int ,int ,int ,int ,int *) ;
 int ppp_timer ;

__attribute__((used)) static void ppp_start(struct net_device *dev)
{
 struct ppp *ppp = get_ppp(dev);
 int i;

 for (i = 0; i < IDX_COUNT; i++) {
  struct proto *proto = &ppp->protos[i];
  proto->dev = dev;
  init_timer(&proto->timer);
  proto->timer.function = ppp_timer;
  proto->timer.data = (unsigned long)proto;
  proto->state = CLOSED;
 }
 ppp->protos[IDX_LCP].pid = PID_LCP;
 ppp->protos[IDX_IPCP].pid = PID_IPCP;
 ppp->protos[IDX_IPV6CP].pid = PID_IPV6CP;

 ppp_cp_event(dev, PID_LCP, START, 0, 0, 0, ((void*)0));
}
