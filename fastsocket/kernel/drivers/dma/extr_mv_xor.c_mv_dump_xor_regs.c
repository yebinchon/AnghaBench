
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


 int KERN_ERR ;
 int XOR_ACTIVATION (struct mv_xor_chan*) ;
 int XOR_CONFIG (struct mv_xor_chan*) ;
 int XOR_ERROR_ADDR (struct mv_xor_chan*) ;
 int XOR_ERROR_CAUSE (struct mv_xor_chan*) ;
 int XOR_INTR_CAUSE (struct mv_xor_chan*) ;
 int XOR_INTR_MASK (struct mv_xor_chan*) ;
 int __raw_readl (int ) ;
 int dev_printk (int ,int ,char*,int ) ;

__attribute__((used)) static void mv_dump_xor_regs(struct mv_xor_chan *chan)
{
 u32 val;

 val = __raw_readl(XOR_CONFIG(chan));
 dev_printk(KERN_ERR, chan->device->common.dev,
     "config       0x%08x.\n", val);

 val = __raw_readl(XOR_ACTIVATION(chan));
 dev_printk(KERN_ERR, chan->device->common.dev,
     "activation   0x%08x.\n", val);

 val = __raw_readl(XOR_INTR_CAUSE(chan));
 dev_printk(KERN_ERR, chan->device->common.dev,
     "intr cause   0x%08x.\n", val);

 val = __raw_readl(XOR_INTR_MASK(chan));
 dev_printk(KERN_ERR, chan->device->common.dev,
     "intr mask    0x%08x.\n", val);

 val = __raw_readl(XOR_ERROR_CAUSE(chan));
 dev_printk(KERN_ERR, chan->device->common.dev,
     "error cause  0x%08x.\n", val);

 val = __raw_readl(XOR_ERROR_ADDR(chan));
 dev_printk(KERN_ERR, chan->device->common.dev,
     "error addr   0x%08x.\n", val);
}
