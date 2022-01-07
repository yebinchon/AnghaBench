
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iop_adma_chan {scalar_t__ pending; TYPE_2__* device; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 scalar_t__ IOP_ADMA_THRESHOLD ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int iop_chan_append (struct iop_adma_chan*) ;

__attribute__((used)) static void iop_adma_check_threshold(struct iop_adma_chan *iop_chan)
{
 dev_dbg(iop_chan->device->common.dev, "pending: %d\n",
  iop_chan->pending);

 if (iop_chan->pending >= IOP_ADMA_THRESHOLD) {
  iop_chan->pending = 0;
  iop_chan_append(iop_chan);
 }
}
