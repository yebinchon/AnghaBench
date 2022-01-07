
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int EXPO_CHANGE ;
 int LATENT_CHANGE ;
 int R00_PART_CONTROL ;
 int R0E_AD_HEIGHTL ;
 int R0F_AD_HEIGHTH ;
 int R10_AD_COL_BEGINL ;
 int R11_AD_COL_BEGINH ;
 int R14_AD_ROW_BEGINL ;
 int R1C_AD_EXPOSE_TIMEL ;
 int R3B_Test3 ;
 int R91_AD_SLOPEREG ;
 int R94_AD_BITCONTROL ;
 int reg_w1 (struct gspca_dev*,int ,int) ;
 int reg_w2 (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void tv_8532_setReg(struct gspca_dev *gspca_dev)
{
 reg_w1(gspca_dev, R3B_Test3, 0x0a);

 reg_w1(gspca_dev, R0E_AD_HEIGHTL, 0x90);
 reg_w1(gspca_dev, R0F_AD_HEIGHTH, 0x01);
 reg_w2(gspca_dev, R1C_AD_EXPOSE_TIMEL, 0x018f);
 reg_w1(gspca_dev, R10_AD_COL_BEGINL, 0x44);

 reg_w1(gspca_dev, R11_AD_COL_BEGINH, 0x00);

 reg_w1(gspca_dev, R14_AD_ROW_BEGINL, 0x0a);

 reg_w1(gspca_dev, R94_AD_BITCONTROL, 0x02);
 reg_w1(gspca_dev, R91_AD_SLOPEREG, 0x00);
 reg_w1(gspca_dev, R00_PART_CONTROL, LATENT_CHANGE | EXPO_CHANGE);

}
