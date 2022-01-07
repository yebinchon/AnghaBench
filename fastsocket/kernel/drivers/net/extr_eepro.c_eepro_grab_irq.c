
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; } ;


 scalar_t__ EBUSY ;
 int INT_NO_REG ;
 int IRQF_SHARED ;
 int eepro_clear_int (int) ;
 int eepro_diag (int) ;
 int eepro_dis_int (int) ;
 int eepro_dis_intline (int) ;
 int eepro_en_intexec (int) ;
 int eepro_en_intline (int) ;
 int eepro_sw2bank0 (int) ;
 int eepro_sw2bank1 (int) ;
 int inb (int) ;
 int* irqrmap ;
 int mdelay (int) ;
 int outb (int,int) ;
 int probe_irq_off (unsigned long) ;
 unsigned long probe_irq_on () ;
 scalar_t__ request_irq (int,int *,int ,char*,struct net_device*) ;

__attribute__((used)) static int eepro_grab_irq(struct net_device *dev)
{
 int irqlist[] = { 3, 4, 5, 7, 9, 10, 11, 12, 0 };
 int *irqp = irqlist, temp_reg, ioaddr = dev->base_addr;

 eepro_sw2bank1(ioaddr);


 eepro_en_intline(ioaddr);


 eepro_sw2bank0(ioaddr);


 eepro_clear_int(ioaddr);


 eepro_en_intexec(ioaddr);

 do {
  eepro_sw2bank1(ioaddr);

  temp_reg = inb(ioaddr + INT_NO_REG);
  outb((temp_reg & 0xf8) | irqrmap[*irqp], ioaddr + INT_NO_REG);

  eepro_sw2bank0(ioaddr);

  if (request_irq (*irqp, ((void*)0), IRQF_SHARED, "bogus", dev) != EBUSY) {
   unsigned long irq_mask;

   irq_mask = probe_irq_on();

   eepro_diag(ioaddr);
   mdelay(20);

   if (*irqp == probe_irq_off(irq_mask))
    break;


   eepro_clear_int(ioaddr);
  }
 } while (*++irqp);

 eepro_sw2bank1(ioaddr);


 eepro_dis_intline(ioaddr);

 eepro_sw2bank0(ioaddr);


 eepro_dis_int(ioaddr);


 eepro_clear_int(ioaddr);

 return dev->irq;
}
