
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* mite_chan; } ;
struct comedi_async {int dummy; } ;
struct TYPE_3__ {int dir; } ;


 int COMEDI_OUTPUT ;
 int ENOTSUPP ;
 int NI_GPCT_ARM_IMMEDIATE ;
 int mite_dma_arm (TYPE_1__*) ;
 int mite_prep_dma (TYPE_1__*,int,int) ;
 int ni_tio_arm (struct ni_gpct*,int,int ) ;
 int ni_tio_configure_dma (struct ni_gpct*,int,int ) ;
 int printk (char*) ;

__attribute__((used)) static int ni_tio_output_cmd(struct ni_gpct *counter,
        struct comedi_async *async)
{
 printk("ni_tio: output commands not yet implemented.\n");
 return -ENOTSUPP;

 counter->mite_chan->dir = COMEDI_OUTPUT;
 mite_prep_dma(counter->mite_chan, 32, 32);
 ni_tio_configure_dma(counter, 1, 0);
 mite_dma_arm(counter->mite_chan);
 return ni_tio_arm(counter, 1, NI_GPCT_ARM_IMMEDIATE);
}
