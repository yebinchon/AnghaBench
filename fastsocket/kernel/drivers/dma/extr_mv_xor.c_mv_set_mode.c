
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_xor_chan {int current_type; TYPE_2__* device; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 int BUG () ;



 int KERN_ERR ;
 int XOR_CONFIG (struct mv_xor_chan*) ;
 int XOR_OPERATION_MODE_MEMCPY ;
 int XOR_OPERATION_MODE_MEMSET ;
 int XOR_OPERATION_MODE_XOR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int dev_printk (int ,int ,char*,int) ;

__attribute__((used)) static void mv_set_mode(struct mv_xor_chan *chan,
          enum dma_transaction_type type)
{
 u32 op_mode;
 u32 config = __raw_readl(XOR_CONFIG(chan));

 switch (type) {
 case 128:
  op_mode = XOR_OPERATION_MODE_XOR;
  break;
 case 130:
  op_mode = XOR_OPERATION_MODE_MEMCPY;
  break;
 case 129:
  op_mode = XOR_OPERATION_MODE_MEMSET;
  break;
 default:
  dev_printk(KERN_ERR, chan->device->common.dev,
      "error: unsupported operation %d.\n",
      type);
  BUG();
  return;
 }

 config &= ~0x7;
 config |= op_mode;
 __raw_writel(config, XOR_CONFIG(chan));
 chan->current_type = type;
}
