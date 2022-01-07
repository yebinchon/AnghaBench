
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;
struct dm1105_dev {int boardnr; } ;
typedef scalar_t__ fe_sec_voltage_t ;


 int DM05_LNB_13V ;
 int DM05_LNB_18V ;
 int DM05_LNB_MASK ;
 int DM05_LNB_OFF ;



 int DM1105_GPIOCTR ;
 int DM1105_GPIOVAL ;
 int DM1105_LNB_13V ;
 int DM1105_LNB_18V ;
 int DM1105_LNB_MASK ;
 int DM1105_LNB_OFF ;
 scalar_t__ SEC_VOLTAGE_13 ;
 scalar_t__ SEC_VOLTAGE_18 ;
 int dm_writel (int ,int ) ;
 struct dm1105_dev* frontend_to_dm1105_dev (struct dvb_frontend*) ;

__attribute__((used)) static int dm1105_set_voltage(struct dvb_frontend *fe, fe_sec_voltage_t voltage)
{
 struct dm1105_dev *dev = frontend_to_dm1105_dev(fe);
 u32 lnb_mask, lnb_13v, lnb_18v, lnb_off;

 switch (dev->boardnr) {
 case 130:
  lnb_mask = DM05_LNB_MASK;
  lnb_off = DM05_LNB_OFF;
  lnb_13v = DM05_LNB_13V;
  lnb_18v = DM05_LNB_18V;
  break;
 case 129:
 case 128:
 default:
  lnb_mask = DM1105_LNB_MASK;
  lnb_off = DM1105_LNB_OFF;
  lnb_13v = DM1105_LNB_13V;
  lnb_18v = DM1105_LNB_18V;
 }

 dm_writel(DM1105_GPIOCTR, lnb_mask);
 if (voltage == SEC_VOLTAGE_18)
  dm_writel(DM1105_GPIOVAL, lnb_18v);
 else if (voltage == SEC_VOLTAGE_13)
  dm_writel(DM1105_GPIOVAL, lnb_13v);
 else
  dm_writel(DM1105_GPIOVAL, lnb_off);

 return 0;
}
