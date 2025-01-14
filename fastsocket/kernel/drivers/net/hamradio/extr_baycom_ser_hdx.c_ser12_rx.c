
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int base_addr; } ;
struct TYPE_6__ {int dcd_shreg; unsigned char last_sample; int dcd_sum0; scalar_t__ dcd_sum1; scalar_t__ dcd_sum2; int interm_sample; unsigned char last_rxbit; void* dcd_time; } ;
struct TYPE_5__ {int shreg; TYPE_3__ ser12; } ;
struct TYPE_4__ {int cur_pllcorr; } ;
struct baycom_state {int opt_dcd; TYPE_2__ modem; int hdrv; TYPE_1__ debug_vals; } ;


 int MCR (int ) ;
 int MSR (int ) ;
 void* SER12_DCD_INTERVAL (struct baycom_state*) ;
 int hdlcdrv_channelbit (int *,unsigned char) ;
 int hdlcdrv_putbits (int *,int) ;
 int hdlcdrv_setdcd (int *,int) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int ser12_set_divisor (struct net_device*,int) ;

__attribute__((used)) static inline void ser12_rx(struct net_device *dev, struct baycom_state *bc)
{
 unsigned char cur_s;



 cur_s = inb(MSR(dev->base_addr)) & 0x10;
 hdlcdrv_channelbit(&bc->hdrv, cur_s);
 bc->modem.ser12.dcd_shreg = (bc->modem.ser12.dcd_shreg << 1) |
  (cur_s != bc->modem.ser12.last_sample);
 bc->modem.ser12.last_sample = cur_s;
 if(bc->modem.ser12.dcd_shreg & 1) {
  if (!bc->opt_dcd) {
   unsigned int dcdspos, dcdsneg;

   dcdspos = dcdsneg = 0;
   dcdspos += ((bc->modem.ser12.dcd_shreg >> 1) & 1);
   if (!(bc->modem.ser12.dcd_shreg & 0x7ffffffe))
    dcdspos += 2;
   dcdsneg += ((bc->modem.ser12.dcd_shreg >> 2) & 1);
   dcdsneg += ((bc->modem.ser12.dcd_shreg >> 3) & 1);
   dcdsneg += ((bc->modem.ser12.dcd_shreg >> 4) & 1);

   bc->modem.ser12.dcd_sum0 += 16*dcdspos - dcdsneg;
  } else
   bc->modem.ser12.dcd_sum0--;
 }
 if(!bc->modem.ser12.dcd_time) {
  hdlcdrv_setdcd(&bc->hdrv, (bc->modem.ser12.dcd_sum0 +
        bc->modem.ser12.dcd_sum1 +
        bc->modem.ser12.dcd_sum2) < 0);
  bc->modem.ser12.dcd_sum2 = bc->modem.ser12.dcd_sum1;
  bc->modem.ser12.dcd_sum1 = bc->modem.ser12.dcd_sum0;

  bc->modem.ser12.dcd_sum0 = 2;
  bc->modem.ser12.dcd_time = SER12_DCD_INTERVAL(bc);
 }
 bc->modem.ser12.dcd_time--;
 if (!bc->opt_dcd) {



  if (bc->modem.ser12.interm_sample) {



   ser12_set_divisor(dev, 4);
  } else {



   switch (bc->modem.ser12.dcd_shreg & 7) {
   case 1:
    ser12_set_divisor(dev, 5);



    break;
   case 4:
    ser12_set_divisor(dev, 3);



    break;
   default:
    ser12_set_divisor(dev, 4);
    break;
   }
   bc->modem.shreg >>= 1;
   if (bc->modem.ser12.last_sample ==
       bc->modem.ser12.last_rxbit)
    bc->modem.shreg |= 0x10000;
   bc->modem.ser12.last_rxbit =
    bc->modem.ser12.last_sample;
  }
  if (++bc->modem.ser12.interm_sample >= 3)
   bc->modem.ser12.interm_sample = 0;



  if (bc->modem.ser12.dcd_shreg & 1) {
   unsigned int dcdspos, dcdsneg;

   dcdspos = dcdsneg = 0;
   dcdspos += ((bc->modem.ser12.dcd_shreg >> 1) & 1);
   dcdspos += (!(bc->modem.ser12.dcd_shreg & 0x7ffffffe))
    << 1;
   dcdsneg += ((bc->modem.ser12.dcd_shreg >> 2) & 1);
   dcdsneg += ((bc->modem.ser12.dcd_shreg >> 3) & 1);
   dcdsneg += ((bc->modem.ser12.dcd_shreg >> 4) & 1);

   bc->modem.ser12.dcd_sum0 += 16*dcdspos - dcdsneg;
  }
 } else {



  if (bc->modem.ser12.interm_sample) {



   ser12_set_divisor(dev, 6);
  } else {



   switch (bc->modem.ser12.dcd_shreg & 3) {
   case 1:
    ser12_set_divisor(dev, 7);



    break;
   case 2:
    ser12_set_divisor(dev, 5);



    break;
   default:
    ser12_set_divisor(dev, 6);
    break;
   }
   bc->modem.shreg >>= 1;
   if (bc->modem.ser12.last_sample ==
       bc->modem.ser12.last_rxbit)
    bc->modem.shreg |= 0x10000;
   bc->modem.ser12.last_rxbit =
    bc->modem.ser12.last_sample;
  }
  bc->modem.ser12.interm_sample = !bc->modem.ser12.interm_sample;



  bc->modem.ser12.dcd_sum0 -= (bc->modem.ser12.dcd_shreg & 1);
 }
 outb(0x0d, MCR(dev->base_addr));
 if (bc->modem.shreg & 1) {
  hdlcdrv_putbits(&bc->hdrv, bc->modem.shreg >> 1);
  bc->modem.shreg = 0x10000;
 }
 if(!bc->modem.ser12.dcd_time) {
  if (bc->opt_dcd & 1)
   hdlcdrv_setdcd(&bc->hdrv, !((inb(MSR(dev->base_addr)) ^ bc->opt_dcd) & 0x80));
  else
   hdlcdrv_setdcd(&bc->hdrv, (bc->modem.ser12.dcd_sum0 +
         bc->modem.ser12.dcd_sum1 +
         bc->modem.ser12.dcd_sum2) < 0);
  bc->modem.ser12.dcd_sum2 = bc->modem.ser12.dcd_sum1;
  bc->modem.ser12.dcd_sum1 = bc->modem.ser12.dcd_sum0;

  bc->modem.ser12.dcd_sum0 = 2;
  bc->modem.ser12.dcd_time = SER12_DCD_INTERVAL(bc);
 }
 bc->modem.ser12.dcd_time--;
}
