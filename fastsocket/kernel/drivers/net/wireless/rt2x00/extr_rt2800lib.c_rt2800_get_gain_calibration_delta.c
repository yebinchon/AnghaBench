
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {scalar_t__ curr_band; } ;


 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_EXTERNAL_TX_ALC ;
 int EEPROM_TSSI_BOUND_A1 ;
 int EEPROM_TSSI_BOUND_A1_MINUS3 ;
 int EEPROM_TSSI_BOUND_A1_MINUS4 ;
 int EEPROM_TSSI_BOUND_A2 ;
 int EEPROM_TSSI_BOUND_A2_MINUS1 ;
 int EEPROM_TSSI_BOUND_A2_MINUS2 ;
 int EEPROM_TSSI_BOUND_A3 ;
 int EEPROM_TSSI_BOUND_A3_PLUS1 ;
 int EEPROM_TSSI_BOUND_A3_REF ;
 int EEPROM_TSSI_BOUND_A4 ;
 int EEPROM_TSSI_BOUND_A4_PLUS2 ;
 int EEPROM_TSSI_BOUND_A4_PLUS3 ;
 int EEPROM_TSSI_BOUND_A5 ;
 int EEPROM_TSSI_BOUND_A5_AGC_STEP ;
 int EEPROM_TSSI_BOUND_A5_PLUS4 ;
 int EEPROM_TSSI_BOUND_BG1 ;
 int EEPROM_TSSI_BOUND_BG1_MINUS3 ;
 int EEPROM_TSSI_BOUND_BG1_MINUS4 ;
 int EEPROM_TSSI_BOUND_BG2 ;
 int EEPROM_TSSI_BOUND_BG2_MINUS1 ;
 int EEPROM_TSSI_BOUND_BG2_MINUS2 ;
 int EEPROM_TSSI_BOUND_BG3 ;
 int EEPROM_TSSI_BOUND_BG3_PLUS1 ;
 int EEPROM_TSSI_BOUND_BG3_REF ;
 int EEPROM_TSSI_BOUND_BG4 ;
 int EEPROM_TSSI_BOUND_BG4_PLUS2 ;
 int EEPROM_TSSI_BOUND_BG4_PLUS3 ;
 int EEPROM_TSSI_BOUND_BG5 ;
 int EEPROM_TSSI_BOUND_BG5_AGC_STEP ;
 int EEPROM_TSSI_BOUND_BG5_PLUS4 ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 int rt2800_bbp_read (struct rt2x00_dev*,int,int*) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00_get_field16 (int ,int ) ;

__attribute__((used)) static int rt2800_get_gain_calibration_delta(struct rt2x00_dev *rt2x00dev)
{
 u8 tssi_bounds[9];
 u8 current_tssi;
 u16 eeprom;
 u8 step;
 int i;




 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1, &eeprom);
 if (!rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_EXTERNAL_TX_ALC))
  return 0;
 if (rt2x00dev->curr_band == IEEE80211_BAND_2GHZ) {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_BG1, &eeprom);
  tssi_bounds[0] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG1_MINUS4);
  tssi_bounds[1] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG1_MINUS3);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_BG2, &eeprom);
  tssi_bounds[2] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG2_MINUS2);
  tssi_bounds[3] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG2_MINUS1);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_BG3, &eeprom);
  tssi_bounds[4] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG3_REF);
  tssi_bounds[5] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG3_PLUS1);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_BG4, &eeprom);
  tssi_bounds[6] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG4_PLUS2);
  tssi_bounds[7] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG4_PLUS3);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_BG5, &eeprom);
  tssi_bounds[8] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_BG5_PLUS4);

  step = rt2x00_get_field16(eeprom,
       EEPROM_TSSI_BOUND_BG5_AGC_STEP);
 } else {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_A1, &eeprom);
  tssi_bounds[0] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A1_MINUS4);
  tssi_bounds[1] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A1_MINUS3);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_A2, &eeprom);
  tssi_bounds[2] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A2_MINUS2);
  tssi_bounds[3] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A2_MINUS1);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_A3, &eeprom);
  tssi_bounds[4] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A3_REF);
  tssi_bounds[5] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A3_PLUS1);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_A4, &eeprom);
  tssi_bounds[6] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A4_PLUS2);
  tssi_bounds[7] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A4_PLUS3);

  rt2x00_eeprom_read(rt2x00dev, EEPROM_TSSI_BOUND_A5, &eeprom);
  tssi_bounds[8] = rt2x00_get_field16(eeprom,
     EEPROM_TSSI_BOUND_A5_PLUS4);

  step = rt2x00_get_field16(eeprom,
       EEPROM_TSSI_BOUND_A5_AGC_STEP);
 }




 if (tssi_bounds[4] == 0xff || step == 0xff)
  return 0;




 rt2800_bbp_read(rt2x00dev, 49, &current_tssi);





 for (i = 0; i <= 3; i++) {
  if (current_tssi > tssi_bounds[i])
   break;
 }

 if (i == 4) {
  for (i = 8; i >= 5; i--) {
   if (current_tssi < tssi_bounds[i])
    break;
  }
 }

 return (i - 4) * step;
}
