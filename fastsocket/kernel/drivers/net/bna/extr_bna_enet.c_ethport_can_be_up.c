
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bna_ethport {int flags; TYPE_2__* bna; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ enet; } ;


 scalar_t__ BNA_ENET_T_REGULAR ;
 int BNA_ETHPORT_F_ADMIN_UP ;
 int BNA_ETHPORT_F_PORT_ENABLED ;
 int BNA_ETHPORT_F_RX_STARTED ;

__attribute__((used)) static inline int
ethport_can_be_up(struct bna_ethport *ethport)
{
 int ready = 0;
 if (ethport->bna->enet.type == BNA_ENET_T_REGULAR)
  ready = ((ethport->flags & BNA_ETHPORT_F_ADMIN_UP) &&
    (ethport->flags & BNA_ETHPORT_F_RX_STARTED) &&
    (ethport->flags & BNA_ETHPORT_F_PORT_ENABLED));
 else
  ready = ((ethport->flags & BNA_ETHPORT_F_ADMIN_UP) &&
    (ethport->flags & BNA_ETHPORT_F_RX_STARTED) &&
    !(ethport->flags & BNA_ETHPORT_F_PORT_ENABLED));
 return ready;
}
