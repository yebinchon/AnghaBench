
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compl_write; int int_en; int op; } ;
struct ioat_dma_descriptor {TYPE_1__ ctl_f; int ctl; scalar_t__ next; } ;
struct ioat_chan_common {int dummy; } ;
struct dma_async_tx_descriptor {int flags; int cookie; scalar_t__ phys; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int,unsigned long long,unsigned long long,int ,int ,int ,int ,int ,int ) ;
 struct device* to_dev (struct ioat_chan_common*) ;

__attribute__((used)) static inline void
__dump_desc_dbg(struct ioat_chan_common *chan, struct ioat_dma_descriptor *hw,
  struct dma_async_tx_descriptor *tx, int id)
{
 struct device *dev = to_dev(chan);

 dev_dbg(dev, "desc[%d]: (%#llx->%#llx) cookie: %d flags: %#x"
  " ctl: %#x (op: %d int_en: %d compl: %d)\n", id,
  (unsigned long long) tx->phys,
  (unsigned long long) hw->next, tx->cookie, tx->flags,
  hw->ctl, hw->ctl_f.op, hw->ctl_f.int_en, hw->ctl_f.compl_write);
}
