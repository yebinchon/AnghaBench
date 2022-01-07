
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshoboe_cb {scalar_t__ txpending; } ;


 int CONFIG0H_DMA_ON ;
 int OBOE_CONFIG0H ;
 int OBOE_ENABLEH ;
 int OBOE_ENABLEH_PHYANDCLOCK ;
 int OUTB (int,int ) ;
 int toshoboe_resetptrs (struct toshoboe_cb*) ;

__attribute__((used)) static void
toshoboe_initptrs (struct toshoboe_cb *self)
{





  toshoboe_resetptrs (self);

  OUTB (0x0, OBOE_ENABLEH);
  OUTB (CONFIG0H_DMA_ON, OBOE_CONFIG0H);
  OUTB (OBOE_ENABLEH_PHYANDCLOCK, OBOE_ENABLEH);

  self->txpending = 0;



}
