
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshoboe_cb {int dummy; } ;


 int CONFIG0H_DMA_ON ;
 int OBOE_CONFIG0H ;
 int OBOE_ENABLEH ;
 int OBOE_ENABLEH_PHYANDCLOCK ;
 int OUTB (int,int ) ;
 int PROMPT ;

__attribute__((used)) static void
toshoboe_start_DMA (struct toshoboe_cb *self, int opts)
{
  OUTB (0x0, OBOE_ENABLEH);
  OUTB (CONFIG0H_DMA_ON | opts, OBOE_CONFIG0H);
  OUTB (OBOE_ENABLEH_PHYANDCLOCK, OBOE_ENABLEH);
  PROMPT;
}
