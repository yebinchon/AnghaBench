
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int * bna; int flags; } ;


 int BNA_ETHPORT_F_ADMIN_UP ;
 int BNA_ETHPORT_F_PORT_ENABLED ;

__attribute__((used)) static void
bna_ethport_uninit(struct bna_ethport *ethport)
{
 ethport->flags &= ~BNA_ETHPORT_F_ADMIN_UP;
 ethport->flags &= ~BNA_ETHPORT_F_PORT_ENABLED;

 ethport->bna = ((void*)0);
}
