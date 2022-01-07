
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int iobase; } ;
struct TYPE_2__ {int num_asics; } ;


 int ASIC_IOSIZE ;
 int FIRST_PAGED_REG ;
 int NUM_PAGED_REGS ;
 int NUM_PAGES ;
 int PORTS_PER_ASIC ;
 unsigned long REG_PORT0 ;
 int outb (int ,unsigned long) ;
 int switch_page (struct comedi_device*,int,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static void init_asics(struct comedi_device *dev)
{

 int asic;

 for (asic = 0; asic < thisboard->num_asics; ++asic) {
  int port, page;
  unsigned long baseaddr = dev->iobase + asic * ASIC_IOSIZE;

  switch_page(dev, asic, 0);


  for (port = 0; port < PORTS_PER_ASIC; ++port)
   outb(0, baseaddr + REG_PORT0 + port);


  for (page = 1; page < NUM_PAGES; ++page) {
   int reg;

   switch_page(dev, asic, page);
   for (reg = FIRST_PAGED_REG;
        reg < FIRST_PAGED_REG + NUM_PAGED_REGS; ++reg)
    outb(0, baseaddr + reg);
  }
  switch_page(dev, asic, 0);

 }
}
