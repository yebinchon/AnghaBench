
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct mpsc_port_info {scalar_t__ txr_tail; scalar_t__ txr_head; int * txb_p; int * txb; scalar_t__ txr_p; scalar_t__ txr; scalar_t__ rxr_posn; int * rxb_p; int * rxb; scalar_t__ rxr_p; scalar_t__ rxr; int * dma_region; TYPE_1__ port; } ;


 int BUG_ON (int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpsc_uninit_rings(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_uninit_rings[%d]: Uninitializing rings\n",pi->port.line);

 BUG_ON(pi->dma_region == ((void*)0));

 pi->rxr = 0;
 pi->rxr_p = 0;
 pi->rxb = ((void*)0);
 pi->rxb_p = ((void*)0);
 pi->rxr_posn = 0;

 pi->txr = 0;
 pi->txr_p = 0;
 pi->txb = ((void*)0);
 pi->txb_p = ((void*)0);
 pi->txr_head = 0;
 pi->txr_tail = 0;
}
