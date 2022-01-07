
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring_info {scalar_t__ tx_cs; int tx_channel; } ;
struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int INTR ;
 int TX_CS (int ) ;
 int niudbg (int ,char*,int ,unsigned long long) ;
 scalar_t__ nr64 (int ) ;

__attribute__((used)) static void niu_txchan_intr(struct niu *np, struct tx_ring_info *rp,
       int ldn)
{
 rp->tx_cs = nr64(TX_CS(rp->tx_channel));

 niudbg(INTR, "%s: txchan_intr cs[%llx]\n",
        np->dev->name, (unsigned long long) rp->tx_cs);
}
