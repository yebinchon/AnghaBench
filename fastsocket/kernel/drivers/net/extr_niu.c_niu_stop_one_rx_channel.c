
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring_info {int rx_channel; } ;
struct niu {int dummy; } ;


 int niu_enable_rx_channel (struct niu*,int ,int ) ;

__attribute__((used)) static void niu_stop_one_rx_channel(struct niu *np, struct rx_ring_info *rp)
{
 (void) niu_enable_rx_channel(np, rp->rx_channel, 0);
}
