
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct slot_dt9812 {int mutex; TYPE_1__* usb; } ;
struct dt9812_rmw_byte {int and_mask; int or_value; int address; } ;
struct TYPE_2__ {int* analog_out_shadow; } ;


 int ENODEV ;
 void* F020_MASK_DACxCN_DACxEN ;
 int F020_SFR_DAC0CN ;
 int F020_SFR_DAC0H ;
 int F020_SFR_DAC0L ;
 int F020_SFR_DAC1CN ;
 int F020_SFR_DAC1H ;
 int F020_SFR_DAC1L ;
 int down (int *) ;
 int dt9812_rmw_multiple_registers (TYPE_1__*,int,struct dt9812_rmw_byte*) ;
 int up (int *) ;

__attribute__((used)) static int dt9812_analog_out(struct slot_dt9812 *slot, int channel, u16 value)
{
 int result = -ENODEV;

 down(&slot->mutex);
 if (slot->usb) {
  struct dt9812_rmw_byte rmw[3];

  switch (channel) {
  case 0:

   rmw[0].address = F020_SFR_DAC0CN;
   rmw[0].and_mask = 0xff;
   rmw[0].or_value = F020_MASK_DACxCN_DACxEN;


   rmw[1].address = F020_SFR_DAC0L;
   rmw[1].and_mask = 0xff;
   rmw[1].or_value = value & 0xff;



   rmw[2].address = F020_SFR_DAC0H;
   rmw[2].and_mask = 0xff;
   rmw[2].or_value = (value >> 8) & 0xf;
   break;

  case 1:

   rmw[0].address = F020_SFR_DAC1CN;
   rmw[0].and_mask = 0xff;
   rmw[0].or_value = F020_MASK_DACxCN_DACxEN;


   rmw[1].address = F020_SFR_DAC1L;
   rmw[1].and_mask = 0xff;
   rmw[1].or_value = value & 0xff;



   rmw[2].address = F020_SFR_DAC1H;
   rmw[2].and_mask = 0xff;
   rmw[2].or_value = (value >> 8) & 0xf;
   break;
  }
  result = dt9812_rmw_multiple_registers(slot->usb, 3, rmw);
  slot->usb->analog_out_shadow[channel] = value;
 }
 up(&slot->mutex);

 return result;
}
