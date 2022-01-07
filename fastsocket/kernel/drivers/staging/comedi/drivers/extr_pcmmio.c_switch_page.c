
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* asics; } ;
struct TYPE_5__ {int dio_num_asics; } ;
struct TYPE_4__ {int pagelock; scalar_t__ iobase; } ;


 int NUM_PAGES ;
 scalar_t__ REG_PAGELOCK ;
 int REG_PAGE_BITOFFSET ;
 int REG_PAGE_MASK ;
 TYPE_3__* devpriv ;
 int outb (int,scalar_t__) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static void switch_page(struct comedi_device *dev, int asic, int page)
{
 if (asic < 0 || asic >= thisboard->dio_num_asics)
  return;
 if (page < 0 || page >= NUM_PAGES)
  return;

 devpriv->asics[asic].pagelock &= ~REG_PAGE_MASK;
 devpriv->asics[asic].pagelock |= page << REG_PAGE_BITOFFSET;


 outb(devpriv->asics[asic].pagelock,
      devpriv->asics[asic].iobase + REG_PAGELOCK);
}
