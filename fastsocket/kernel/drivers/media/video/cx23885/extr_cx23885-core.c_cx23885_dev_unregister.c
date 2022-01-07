
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx23885_dev {size_t board; int lmmio; int * i2c_bus; int ts2; int ts1; int refcount; int pci; } ;
struct TYPE_2__ {scalar_t__ porta; scalar_t__ portb; scalar_t__ portc; } ;


 scalar_t__ CX23885_ANALOG_VIDEO ;
 scalar_t__ CX23885_MPEG_DVB ;
 scalar_t__ CX23885_MPEG_ENCODER ;
 int atomic_dec_and_test (int *) ;
 int cx23885_417_unregister (struct cx23885_dev*) ;
 TYPE_1__* cx23885_boards ;
 int cx23885_dvb_unregister (int *) ;
 int cx23885_i2c_unregister (int *) ;
 int cx23885_video_unregister (struct cx23885_dev*) ;
 int iounmap (int ) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void cx23885_dev_unregister(struct cx23885_dev *dev)
{
 release_mem_region(pci_resource_start(dev->pci, 0),
      pci_resource_len(dev->pci, 0));

 if (!atomic_dec_and_test(&dev->refcount))
  return;

 if (cx23885_boards[dev->board].porta == CX23885_ANALOG_VIDEO)
  cx23885_video_unregister(dev);

 if (cx23885_boards[dev->board].portb == CX23885_MPEG_DVB)
  cx23885_dvb_unregister(&dev->ts1);

 if (cx23885_boards[dev->board].portb == CX23885_MPEG_ENCODER)
  cx23885_417_unregister(dev);

 if (cx23885_boards[dev->board].portc == CX23885_MPEG_DVB)
  cx23885_dvb_unregister(&dev->ts2);

 if (cx23885_boards[dev->board].portc == CX23885_MPEG_ENCODER)
  cx23885_417_unregister(dev);

 cx23885_i2c_unregister(&dev->i2c_bus[2]);
 cx23885_i2c_unregister(&dev->i2c_bus[1]);
 cx23885_i2c_unregister(&dev->i2c_bus[0]);

 iounmap(dev->lmmio);
}
