
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned long s5933_config; } ;


 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ;
 scalar_t__ AMCC_OP_REG_MCSR_NVDATA ;
 int ETIMEDOUT ;
 unsigned int MCSR_NV_ENABLE ;
 unsigned int MCSR_NV_LOAD_HIGH_ADDR ;
 unsigned int MCSR_NV_LOAD_LOW_ADDR ;
 unsigned int MCSR_NV_READ ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 scalar_t__ wait_for_nvram_ready (unsigned long) ;

__attribute__((used)) static int nvram_read(struct comedi_device *dev, unsigned int address,
        uint8_t * data)
{
 unsigned long iobase = devpriv->s5933_config;

 if (wait_for_nvram_ready(iobase) < 0)
  return -ETIMEDOUT;

 outb(MCSR_NV_ENABLE | MCSR_NV_LOAD_LOW_ADDR,
      iobase + AMCC_OP_REG_MCSR_NVCMD);
 outb(address & 0xff, iobase + AMCC_OP_REG_MCSR_NVDATA);
 outb(MCSR_NV_ENABLE | MCSR_NV_LOAD_HIGH_ADDR,
      iobase + AMCC_OP_REG_MCSR_NVCMD);
 outb((address >> 8) & 0xff, iobase + AMCC_OP_REG_MCSR_NVDATA);
 outb(MCSR_NV_ENABLE | MCSR_NV_READ, iobase + AMCC_OP_REG_MCSR_NVCMD);

 if (wait_for_nvram_ready(iobase) < 0)
  return -ETIMEDOUT;

 *data = inb(iobase + AMCC_OP_REG_MCSR_NVDATA);

 return 0;
}
