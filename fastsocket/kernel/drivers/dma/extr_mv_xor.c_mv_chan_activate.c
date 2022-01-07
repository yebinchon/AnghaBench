
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_xor_chan {TYPE_2__* device; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 int XOR_ACTIVATION (struct mv_xor_chan*) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void mv_chan_activate(struct mv_xor_chan *chan)
{
 u32 activation;

 dev_dbg(chan->device->common.dev, " activate chan.\n");
 activation = __raw_readl(XOR_ACTIVATION(chan));
 activation |= 0x1;
 __raw_writel(activation, XOR_ACTIVATION(chan));
}
