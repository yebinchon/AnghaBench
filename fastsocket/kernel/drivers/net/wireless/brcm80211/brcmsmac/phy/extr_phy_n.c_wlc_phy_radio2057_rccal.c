
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int radiorev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 int MAX_205x_RCAL_WAITLOOPS ;
 int RADIO_2057_RCCAL_DONE_OSCCAP ;
 int RADIO_2057_RCCAL_MASTER ;
 int RADIO_2057_RCCAL_START_R1_Q1_P1 ;
 int RADIO_2057_RCCAL_TRC0 ;
 int RADIO_2057_RCCAL_X1 ;
 int RADIO_2057v7_RCCAL_MASTER ;
 scalar_t__ WARN (int,char*) ;
 int read_radio_reg (struct brcms_phy*,int ) ;
 int udelay (int) ;
 int write_radio_reg (struct brcms_phy*,int ,int) ;

__attribute__((used)) static u16 wlc_phy_radio2057_rccal(struct brcms_phy *pi)
{
 u16 rccal_valid;
 int i;
 bool chip43226_6362A0;

 chip43226_6362A0 = ((pi->pubpi.radiorev == 3)
       || (pi->pubpi.radiorev == 4)
       || (pi->pubpi.radiorev == 6));

 rccal_valid = 0;
 if (chip43226_6362A0) {
  write_radio_reg(pi, RADIO_2057_RCCAL_MASTER, 0x61);
  write_radio_reg(pi, RADIO_2057_RCCAL_TRC0, 0xc0);
 } else {
  write_radio_reg(pi, RADIO_2057v7_RCCAL_MASTER, 0x61);

  write_radio_reg(pi, RADIO_2057_RCCAL_TRC0, 0xe9);
 }
 write_radio_reg(pi, RADIO_2057_RCCAL_X1, 0x6e);
 write_radio_reg(pi, RADIO_2057_RCCAL_START_R1_Q1_P1, 0x55);

 for (i = 0; i < MAX_205x_RCAL_WAITLOOPS; i++) {
  rccal_valid = read_radio_reg(pi, RADIO_2057_RCCAL_DONE_OSCCAP);
  if (rccal_valid & 0x2)
   break;

  udelay(500);
 }

 write_radio_reg(pi, RADIO_2057_RCCAL_START_R1_Q1_P1, 0x15);

 rccal_valid = 0;
 if (chip43226_6362A0) {
  write_radio_reg(pi, RADIO_2057_RCCAL_MASTER, 0x69);
  write_radio_reg(pi, RADIO_2057_RCCAL_TRC0, 0xb0);
 } else {
  write_radio_reg(pi, RADIO_2057v7_RCCAL_MASTER, 0x69);

  write_radio_reg(pi, RADIO_2057_RCCAL_TRC0, 0xd5);
 }
 write_radio_reg(pi, RADIO_2057_RCCAL_X1, 0x6e);
 write_radio_reg(pi, RADIO_2057_RCCAL_START_R1_Q1_P1, 0x55);

 for (i = 0; i < MAX_205x_RCAL_WAITLOOPS; i++) {
  rccal_valid = read_radio_reg(pi, RADIO_2057_RCCAL_DONE_OSCCAP);
  if (rccal_valid & 0x2)
   break;

  udelay(500);
 }

 write_radio_reg(pi, RADIO_2057_RCCAL_START_R1_Q1_P1, 0x15);

 rccal_valid = 0;
 if (chip43226_6362A0) {
  write_radio_reg(pi, RADIO_2057_RCCAL_MASTER, 0x73);

  write_radio_reg(pi, RADIO_2057_RCCAL_X1, 0x28);
  write_radio_reg(pi, RADIO_2057_RCCAL_TRC0, 0xb0);
 } else {
  write_radio_reg(pi, RADIO_2057v7_RCCAL_MASTER, 0x73);
  write_radio_reg(pi, RADIO_2057_RCCAL_X1, 0x6e);
  write_radio_reg(pi, RADIO_2057_RCCAL_TRC0, 0x99);
 }
 write_radio_reg(pi, RADIO_2057_RCCAL_START_R1_Q1_P1, 0x55);

 for (i = 0; i < MAX_205x_RCAL_WAITLOOPS; i++) {
  rccal_valid = read_radio_reg(pi, RADIO_2057_RCCAL_DONE_OSCCAP);
  if (rccal_valid & 0x2)
   break;

  udelay(500);
 }

 if (WARN(!(rccal_valid & 0x2), "HW error: radio calib4"))
  return 0;

 write_radio_reg(pi, RADIO_2057_RCCAL_START_R1_Q1_P1, 0x15);

 return rccal_valid;
}
