
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int TDA9875_ABA ;
 int TDA9875_ACS ;
 int TDA9875_ADCIS ;
 int TDA9875_AER ;
 int TDA9875_ATR ;
 int TDA9875_AVL ;
 int TDA9875_AVR ;
 int TDA9875_C1LSB ;
 int TDA9875_C1MIB ;
 int TDA9875_C1MSB ;
 int TDA9875_C2LSB ;
 int TDA9875_C2MIB ;
 int TDA9875_C2MSB ;
 int TDA9875_CFG ;
 int TDA9875_CH1V ;
 int TDA9875_CH2V ;
 int TDA9875_DACOS ;
 int TDA9875_DCR ;
 int TDA9875_DEEM ;
 int TDA9875_FMAT ;
 int TDA9875_LOSR ;
 int TDA9875_MBA ;
 int TDA9875_MCS ;
 int TDA9875_MSR ;
 int TDA9875_MTR ;
 int TDA9875_MUT ;
 int TDA9875_MVL ;
 int TDA9875_MVR ;
 int TDA9875_SC1 ;
 int TDA9875_SC2 ;
 int chip_write (struct CHIPSTATE*,int ,int) ;

__attribute__((used)) static int tda9875_initialize(struct CHIPSTATE *chip)
{
 chip_write(chip, TDA9875_CFG, 0xd0);
 chip_write(chip, TDA9875_MSR, 0x03);
 chip_write(chip, TDA9875_C1MSB, 0x00);
 chip_write(chip, TDA9875_C1MIB, 0x00);
 chip_write(chip, TDA9875_C1LSB, 0x00);
 chip_write(chip, TDA9875_C2MSB, 0x00);
 chip_write(chip, TDA9875_C2MIB, 0x00);
 chip_write(chip, TDA9875_C2LSB, 0x00);
 chip_write(chip, TDA9875_DCR, 0x00);
 chip_write(chip, TDA9875_DEEM, 0x44);
 chip_write(chip, TDA9875_FMAT, 0x00);
 chip_write(chip, TDA9875_SC1, 0x00);
 chip_write(chip, TDA9875_SC2, 0x01);

 chip_write(chip, TDA9875_CH1V, 0x10);
 chip_write(chip, TDA9875_CH2V, 0x10);
 chip_write(chip, TDA9875_DACOS, 0x02);
 chip_write(chip, TDA9875_ADCIS, 0x6f);
 chip_write(chip, TDA9875_LOSR, 0x00);
 chip_write(chip, TDA9875_AER, 0x00);
 chip_write(chip, TDA9875_MCS, 0x44);
 chip_write(chip, TDA9875_MVL, 0x03);
 chip_write(chip, TDA9875_MVR, 0x03);
 chip_write(chip, TDA9875_MBA, 0x00);
 chip_write(chip, TDA9875_MTR, 0x00);
 chip_write(chip, TDA9875_ACS, 0x44);
 chip_write(chip, TDA9875_AVL, 0x00);
 chip_write(chip, TDA9875_AVR, 0x00);
 chip_write(chip, TDA9875_ABA, 0x00);
 chip_write(chip, TDA9875_ATR, 0x00);

 chip_write(chip, TDA9875_MUT, 0xcc);
 return 0;
}
