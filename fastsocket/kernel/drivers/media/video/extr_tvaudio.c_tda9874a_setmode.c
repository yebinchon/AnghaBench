
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {int mode; TYPE_1__ shadow; struct v4l2_subdev sd; } ;


 int MAXREGS ;
 int TDA9874A_AOSR ;
 int TDA9874A_FMMR ;
 int TDA9874A_MDACOSR ;
 int TDA9874A_NCONR ;




 int chip_write (struct CHIPSTATE*,int ,int) ;
 int debug ;
 int tda9874a_ESP ;
 int tda9874a_NCONR ;
 int tda9874a_dic ;
 scalar_t__ tda9874a_mode ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int) ;

__attribute__((used)) static void tda9874a_setmode(struct CHIPSTATE *chip, int mode)
{
 struct v4l2_subdev *sd = &chip->sd;



 if (tda9874a_mode) {
  if(chip->shadow.bytes[MAXREGS-2] & 0x20)
   tda9874a_NCONR &= 0xfe;
  else
   tda9874a_NCONR |= 0x01;
  chip_write(chip, TDA9874A_NCONR, tda9874a_NCONR);
 }







 if(tda9874a_dic == 0x11) {
  int aosr = 0x80;
  int mdacosr = (tda9874a_mode) ? 0x82:0x80;

  switch(mode) {
  case 129:
  case 128:
   break;
  case 131:
   aosr = 0x80;
   mdacosr = (tda9874a_mode) ? 0x82:0x80;
   break;
  case 130:
   aosr = 0xa0;
   mdacosr = (tda9874a_mode) ? 0x83:0x81;
   break;
  default:
   chip->mode = 0;
   return;
  }
  chip_write(chip, TDA9874A_AOSR, aosr);
  chip_write(chip, TDA9874A_MDACOSR, mdacosr);

  v4l2_dbg(1, debug, sd, "tda9874a_setmode(): req. mode %d; AOSR=0x%X, MDACOSR=0x%X.\n",
   mode, aosr, mdacosr);

 } else {
  int fmmr,aosr;

  switch(mode) {
  case 129:
   fmmr = 0x00;
   aosr = 0x10;
   break;
  case 128:
   if(tda9874a_mode) {
    fmmr = 0x00;
    aosr = 0x00;
   } else {
    fmmr = (tda9874a_ESP == 1) ? 0x05 : 0x04;
    aosr = 0x00;
   }
   break;
  case 131:
   fmmr = 0x02;
   aosr = 0x10;
   break;
  case 130:
   fmmr = 0x02;
   aosr = 0x20;
   break;
  default:
   chip->mode = 0;
   return;
  }
  chip_write(chip, TDA9874A_FMMR, fmmr);
  chip_write(chip, TDA9874A_AOSR, aosr);

  v4l2_dbg(1, debug, sd, "tda9874a_setmode(): req. mode %d; FMMR=0x%X, AOSR=0x%X.\n",
   mode, fmmr, aosr);
 }
}
