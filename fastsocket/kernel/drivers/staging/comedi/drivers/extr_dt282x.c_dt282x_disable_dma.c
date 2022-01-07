
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dma; scalar_t__ usedma; } ;
struct TYPE_3__ {int chan; } ;


 TYPE_2__* devpriv ;
 int disable_dma (int ) ;

__attribute__((used)) static void dt282x_disable_dma(struct comedi_device *dev)
{
 if (devpriv->usedma) {
  disable_dma(devpriv->dma[0].chan);
  disable_dma(devpriv->dma[1].chan);
 }
}
