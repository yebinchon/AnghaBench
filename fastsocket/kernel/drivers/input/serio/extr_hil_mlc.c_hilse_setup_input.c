
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int packet; } ;
struct hilse_node {int act; int arg; TYPE_1__ object; } ;
typedef int hil_packet ;
struct TYPE_5__ {int imatch; int istarted; int icount; int isem; int ipacket; int instart; int intimeout; int ddi; } ;
typedef TYPE_2__ hil_mlc ;


 int BUG () ;
 int BUG_ON (int ) ;




 int HIL_PKT_ADDR_SHIFT ;
 int do_gettimeofday (int *) ;
 int down_trylock (int *) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline void hilse_setup_input(hil_mlc *mlc, const struct hilse_node *node)
{

 switch (node->act) {
 case 130:
  mlc->imatch = node->object.packet;
  mlc->imatch |= ((mlc->ddi + 2) << HIL_PKT_ADDR_SHIFT);
  break;
 case 129:
  mlc->imatch = node->object.packet;
  mlc->imatch |= ((mlc->ddi + 1) << HIL_PKT_ADDR_SHIFT);
  break;
 case 131:
  mlc->imatch = node->object.packet;
  break;
 case 128:
  mlc->imatch = 0;
  break;
 default:
  BUG();
 }
 mlc->istarted = 1;
 mlc->intimeout = node->arg;
 do_gettimeofday(&(mlc->instart));
 mlc->icount = 15;
 memset(mlc->ipacket, 0, 16 * sizeof(hil_packet));
 BUG_ON(down_trylock(&mlc->isem));
}
