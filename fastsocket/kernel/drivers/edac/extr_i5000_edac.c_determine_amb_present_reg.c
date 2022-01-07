
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i5000_pvt {int b0_ambpresent1; int b0_ambpresent0; int b1_ambpresent1; int b1_ambpresent0; } ;


 int CHANNELS_PER_BRANCH ;

__attribute__((used)) static int determine_amb_present_reg(struct i5000_pvt *pvt, int channel)
{
 int amb_present;

 if (channel < CHANNELS_PER_BRANCH) {
  if (channel & 0x1)
   amb_present = pvt->b0_ambpresent1;
  else
   amb_present = pvt->b0_ambpresent0;
 } else {
  if (channel & 0x1)
   amb_present = pvt->b1_ambpresent1;
  else
   amb_present = pvt->b1_ambpresent0;
 }

 return amb_present;
}
