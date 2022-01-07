
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf_addr; } ;
struct TYPE_3__ {int buf_addr; } ;


 int RX_BUF_COUNT ;
 int TX_BUF_COUNT ;
 int free_page (unsigned long) ;
 int ixp2000_uengine_reset (int) ;
 int ixp2000_uengine_stop_contexts (int,int) ;
 int * nds ;
 int nds_count ;
 scalar_t__ phys_to_virt (int ) ;
 TYPE_2__* rx_desc ;
 TYPE_1__* tx_desc ;
 int unregister_netdev (int ) ;

void ixpdev_deinit(void)
{
 int i;



 for (i = 0; i < nds_count; i++)
  unregister_netdev(nds[i]);

 ixp2000_uengine_stop_contexts(1, 0xff);
 ixp2000_uengine_stop_contexts(0, 0xff);
 ixp2000_uengine_reset(0x3);

 for (i = 0; i < TX_BUF_COUNT; i++)
  free_page((unsigned long)phys_to_virt(tx_desc[i].buf_addr));

 for (i = 0; i < RX_BUF_COUNT; i++)
  free_page((unsigned long)phys_to_virt(rx_desc[i].buf_addr));
}
