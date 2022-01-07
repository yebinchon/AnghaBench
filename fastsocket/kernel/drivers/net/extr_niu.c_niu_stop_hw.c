
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int IFDOWN ;
 int niu_disable_ipp (struct niu*) ;
 int niu_enable_interrupts (struct niu*,int ) ;
 int niu_enable_rx_mac (struct niu*,int ) ;
 int niu_reset_rx_channels (struct niu*) ;
 int niu_reset_tx_channels (struct niu*) ;
 int niu_stop_rx_channels (struct niu*) ;
 int niu_stop_tx_channels (struct niu*) ;
 int niudbg (int ,char*,int ) ;

__attribute__((used)) static void niu_stop_hw(struct niu *np)
{
 niudbg(IFDOWN, "%s: Disable interrupts\n", np->dev->name);
 niu_enable_interrupts(np, 0);

 niudbg(IFDOWN, "%s: Disable RX MAC\n", np->dev->name);
 niu_enable_rx_mac(np, 0);

 niudbg(IFDOWN, "%s: Disable IPP\n", np->dev->name);
 niu_disable_ipp(np);

 niudbg(IFDOWN, "%s: Stop TX channels\n", np->dev->name);
 niu_stop_tx_channels(np);

 niudbg(IFDOWN, "%s: Stop RX channels\n", np->dev->name);
 niu_stop_rx_channels(np);

 niudbg(IFDOWN, "%s: Reset TX channels\n", np->dev->name);
 niu_reset_tx_channels(np);

 niudbg(IFDOWN, "%s: Reset RX channels\n", np->dev->name);
 niu_reset_rx_channels(np);
}
