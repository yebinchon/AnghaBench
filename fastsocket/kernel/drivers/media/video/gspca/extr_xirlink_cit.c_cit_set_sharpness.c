
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; size_t sharpness; } ;
struct gspca_dev {int dummy; } ;
 int cit_PacketFormat2 (struct gspca_dev*,int,unsigned short const) ;
 int cit_model1_ntries ;
 int cit_model3_Packet1 (struct gspca_dev*,int,unsigned short) ;

__attribute__((used)) static int cit_set_sharpness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132:
 case 130:
 case 128:
 case 133:

  break;
 case 131: {
  int i;
  const unsigned short sa[] = {
   0x11, 0x13, 0x16, 0x18, 0x1a, 0x8, 0x0a };

  for (i = 0; i < cit_model1_ntries; i++)
   cit_PacketFormat2(gspca_dev, 0x0013, sa[sd->sharpness]);
  break;
 }
 case 129:
 {




  static const struct {
   unsigned short sv1;
   unsigned short sv2;
   unsigned short sv3;
   unsigned short sv4;
  } sv[7] = {
   { 0x00, 0x00, 0x05, 0x14 },
   { 0x01, 0x04, 0x05, 0x14 },
   { 0x02, 0x04, 0x05, 0x14 },
   { 0x03, 0x04, 0x05, 0x14 },
   { 0x03, 0x05, 0x05, 0x14 },
   { 0x03, 0x06, 0x05, 0x14 },
   { 0x03, 0x07, 0x05, 0x14 }
  };
  cit_model3_Packet1(gspca_dev, 0x0060, sv[sd->sharpness].sv1);
  cit_model3_Packet1(gspca_dev, 0x0061, sv[sd->sharpness].sv2);
  cit_model3_Packet1(gspca_dev, 0x0062, sv[sd->sharpness].sv3);
  cit_model3_Packet1(gspca_dev, 0x0063, sv[sd->sharpness].sv4);
  break;
 }
 }
 return 0;
}
