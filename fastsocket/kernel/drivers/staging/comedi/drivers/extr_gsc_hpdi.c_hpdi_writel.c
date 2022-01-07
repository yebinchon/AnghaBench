
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* bits; scalar_t__ hpdi_iobase; } ;


 TYPE_1__* priv (struct comedi_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void hpdi_writel(struct comedi_device *dev, uint32_t bits,
          unsigned int offset)
{
 writel(bits | priv(dev)->bits[offset / sizeof(uint32_t)],
        priv(dev)->hpdi_iobase + offset);
}
