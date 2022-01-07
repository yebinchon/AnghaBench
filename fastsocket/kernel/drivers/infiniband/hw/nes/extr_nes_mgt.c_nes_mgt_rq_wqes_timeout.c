
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_vnic_mgt {int rx_skbs_needed; int rx_skb_timer_running; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int nes_replenish_mgt_rq (struct nes_vnic_mgt*) ;

__attribute__((used)) static void nes_mgt_rq_wqes_timeout(unsigned long parm)
{
 struct nes_vnic_mgt *mgtvnic = (struct nes_vnic_mgt *)parm;

 atomic_set(&mgtvnic->rx_skb_timer_running, 0);
 if (atomic_read(&mgtvnic->rx_skbs_needed))
  nes_replenish_mgt_rq(mgtvnic);
}
