
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int**) ;
 int CMD_EEprom_Close ;
 int CMD_EEprom_Open ;
 int R01_TIMING_CONTROL_LOW ;
 int R03_TABLE_ADDR ;
 int R04_WTRAM_DATA_L ;
 int R05_WTRAM_DATA_M ;
 int R06_WTRAM_DATA_H ;
 int R07_TABLE_LEN ;
 int R08_RAM_WRITE_ACTION ;
 int** eeprom_data ;
 int reg_w1 (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void tv_8532WriteEEprom(struct gspca_dev *gspca_dev)
{
 int i;

 reg_w1(gspca_dev, R01_TIMING_CONTROL_LOW, CMD_EEprom_Open);
 for (i = 0; i < ARRAY_SIZE(eeprom_data); i++) {
  reg_w1(gspca_dev, R03_TABLE_ADDR, i);
  reg_w1(gspca_dev, R04_WTRAM_DATA_L, eeprom_data[i][2]);
  reg_w1(gspca_dev, R05_WTRAM_DATA_M, eeprom_data[i][1]);
  reg_w1(gspca_dev, R06_WTRAM_DATA_H, eeprom_data[i][0]);
  reg_w1(gspca_dev, R08_RAM_WRITE_ACTION, 0);
 }
 reg_w1(gspca_dev, R07_TABLE_LEN, i);
 reg_w1(gspca_dev, R01_TIMING_CONTROL_LOW, CMD_EEprom_Close);
}
