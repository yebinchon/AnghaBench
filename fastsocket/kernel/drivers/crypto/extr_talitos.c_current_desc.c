
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct talitos_private {int fifo_len; TYPE_2__* chan; scalar_t__ reg; } ;
struct talitos_desc {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int tail; TYPE_1__* fifo; } ;
struct TYPE_3__ {scalar_t__ dma_desc; struct talitos_desc* desc; } ;


 scalar_t__ TALITOS_CDPR_LO (int) ;
 int dev_err (struct device*,char*) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 scalar_t__ in_be32 (scalar_t__) ;

__attribute__((used)) static struct talitos_desc *current_desc(struct device *dev, int ch)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 int tail = priv->chan[ch].tail;
 dma_addr_t cur_desc;

 cur_desc = in_be32(priv->reg + TALITOS_CDPR_LO(ch));

 while (priv->chan[ch].fifo[tail].dma_desc != cur_desc) {
  tail = (tail + 1) & (priv->fifo_len - 1);
  if (tail == priv->chan[ch].tail) {
   dev_err(dev, "couldn't locate current descriptor\n");
   return ((void*)0);
  }
 }

 return priv->chan[ch].fifo[tail].desc;
}
