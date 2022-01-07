
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int reg_type; int adbits; size_t gainlkup; } ;
struct TYPE_3__ {int changain_state; unsigned int changain_spec; int ai_calib_source_enabled; unsigned int ai_calib_source; unsigned int* ai_offset; int (* stc_writew ) (struct comedi_device*,int,int ) ;} ;


 unsigned int AI_COMMON ;
 unsigned int AI_CONFIG_CHANNEL (unsigned int) ;
 unsigned int AI_DIFFERENTIAL ;
 unsigned int AI_DITHER ;
 unsigned int AI_GROUND ;
 unsigned int AI_LAST_CHANNEL ;




 unsigned int CR_ALT_FILTER ;
 unsigned int CR_ALT_SOURCE ;
 unsigned int CR_AREF (unsigned int) ;
 int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 int Calibration_Channel_6143 ;
 unsigned int Calibration_Channel_6143_RelayOff ;
 unsigned int Calibration_Channel_6143_RelayOn ;
 int Calibration_Channel_Select_611x ;
 int Configuration_Memory_Clear ;
 int Configuration_Memory_High ;
 int Configuration_Memory_Low ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int msleep_interruptible (int) ;
 unsigned int** ni_gainlkup ;
 int ni_m_series_load_channelgain_list (struct comedi_device*,unsigned int,unsigned int*) ;
 int ni_prime_channelgain_list (struct comedi_device*) ;
 int ni_reg_611x ;
 int ni_reg_6143 ;
 int ni_reg_m_series_mask ;
 int ni_writew (unsigned int,int ) ;
 int stub1 (struct comedi_device*,int,int ) ;

__attribute__((used)) static void ni_load_channelgain_list(struct comedi_device *dev,
         unsigned int n_chan, unsigned int *list)
{
 unsigned int chan, range, aref;
 unsigned int i;
 unsigned int hi, lo;
 unsigned offset;
 unsigned int dither;

 if (boardtype.reg_type & ni_reg_m_series_mask) {
  ni_m_series_load_channelgain_list(dev, n_chan, list);
  return;
 }
 if (n_chan == 1 && (boardtype.reg_type != ni_reg_611x)
     && (boardtype.reg_type != ni_reg_6143)) {
  if (devpriv->changain_state
      && devpriv->changain_spec == list[0]) {

   return;
  }
  devpriv->changain_state = 1;
  devpriv->changain_spec = list[0];
 } else {
  devpriv->changain_state = 0;
 }

 devpriv->stc_writew(dev, 1, Configuration_Memory_Clear);


 if (boardtype.reg_type == ni_reg_6143) {
  if ((list[0] & CR_ALT_SOURCE)
      && !devpriv->ai_calib_source_enabled) {

   ni_writew(devpriv->ai_calib_source |
      Calibration_Channel_6143_RelayOn,
      Calibration_Channel_6143);
   ni_writew(devpriv->ai_calib_source,
      Calibration_Channel_6143);
   devpriv->ai_calib_source_enabled = 1;
   msleep_interruptible(100);
  } else if (!(list[0] & CR_ALT_SOURCE)
      && devpriv->ai_calib_source_enabled) {

   ni_writew(devpriv->ai_calib_source |
      Calibration_Channel_6143_RelayOff,
      Calibration_Channel_6143);
   ni_writew(devpriv->ai_calib_source,
      Calibration_Channel_6143);
   devpriv->ai_calib_source_enabled = 0;
   msleep_interruptible(100);
  }
 }

 offset = 1 << (boardtype.adbits - 1);
 for (i = 0; i < n_chan; i++) {
  if ((boardtype.reg_type != ni_reg_6143)
      && (list[i] & CR_ALT_SOURCE)) {
   chan = devpriv->ai_calib_source;
  } else {
   chan = CR_CHAN(list[i]);
  }
  aref = CR_AREF(list[i]);
  range = CR_RANGE(list[i]);
  dither = ((list[i] & CR_ALT_FILTER) != 0);


  range = ni_gainlkup[boardtype.gainlkup][range];
  if (boardtype.reg_type == ni_reg_611x)
   devpriv->ai_offset[i] = offset;
  else
   devpriv->ai_offset[i] = (range & 0x100) ? 0 : offset;

  hi = 0;
  if ((list[i] & CR_ALT_SOURCE)) {
   if (boardtype.reg_type == ni_reg_611x)
    ni_writew(CR_CHAN(list[i]) & 0x0003,
       Calibration_Channel_Select_611x);
  } else {
   if (boardtype.reg_type == ni_reg_611x)
    aref = 130;
   else if (boardtype.reg_type == ni_reg_6143)
    aref = 128;
   switch (aref) {
   case 130:
    hi |= AI_DIFFERENTIAL;
    break;
   case 131:
    hi |= AI_COMMON;
    break;
   case 129:
    hi |= AI_GROUND;
    break;
   case 128:
    break;
   }
  }
  hi |= AI_CONFIG_CHANNEL(chan);

  ni_writew(hi, Configuration_Memory_High);

  if (boardtype.reg_type != ni_reg_6143) {
   lo = range;
   if (i == n_chan - 1)
    lo |= AI_LAST_CHANNEL;
   if (dither)
    lo |= AI_DITHER;

   ni_writew(lo, Configuration_Memory_Low);
  }
 }


 if ((boardtype.reg_type != ni_reg_611x)
     && (boardtype.reg_type != ni_reg_6143)) {
  ni_prime_channelgain_list(dev);
 }
}
