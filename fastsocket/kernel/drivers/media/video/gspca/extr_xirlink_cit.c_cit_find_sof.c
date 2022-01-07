
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int model; int sof_read; int sof_len; } ;
struct gspca_dev {int width; } ;
 int D_FRAM ;
 int PDEBUG (int ,char*,int,int,int,int,...) ;

__attribute__((used)) static u8 *cit_find_sof(struct gspca_dev *gspca_dev, u8 *data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 byte3 = 0, byte4 = 0;
 int i;

 switch (sd->model) {
 case 132:
 case 131:
 case 129:
 case 133:
  switch (gspca_dev->width) {
  case 160:
   byte3 = 0x02;
   byte4 = 0x0a;
   break;
  case 176:
   byte3 = 0x02;
   byte4 = 0x0e;
   break;
  case 320:
   byte3 = 0x02;
   byte4 = 0x08;
   break;
  case 352:
   byte3 = 0x02;
   byte4 = 0x00;
   break;
  case 640:
   byte3 = 0x03;
   byte4 = 0x08;
   break;
  }


  if (sd->model <= 131)
   byte3 = 0x00;

  for (i = 0; i < len; i++) {


   if (sd->model == 132 && sd->sof_read != i)
    break;

   switch (sd->sof_read) {
   case 0:
    if (data[i] == 0x00)
     sd->sof_read++;
    break;
   case 1:
    if (data[i] == 0xff)
     sd->sof_read++;
    else if (data[i] == 0x00)
     sd->sof_read = 1;
    else
     sd->sof_read = 0;
    break;
   case 2:
    if (data[i] == byte3)
     sd->sof_read++;
    else if (data[i] == 0x00)
     sd->sof_read = 1;
    else
     sd->sof_read = 0;
    break;
   case 3:
    if (data[i] == byte4) {
     sd->sof_read = 0;
     return data + i + (sd->sof_len - 3);
    }
    if (byte3 == 0x00 && data[i] == 0xff)
     sd->sof_read = 2;
    else if (data[i] == 0x00)
     sd->sof_read = 1;
    else
     sd->sof_read = 0;
    break;
   }
  }
  break;
 case 130:
 case 128:


  for (i = 0; i < len; i++) {
   switch (sd->sof_read) {
   case 0:
    if (data[i] == 0x00)
     sd->sof_read++;
    break;
   case 1:
    sd->sof_read = 0;
    if (data[i] == 0xff) {
     if (i >= 4)
      PDEBUG(D_FRAM,
             "header found at offset: %d: %02x %02x 00 %02x %02x %02x\n",
             i - 1,
             data[i - 4],
             data[i - 3],
             data[i],
             data[i + 1],
             data[i + 2]);
     else
      PDEBUG(D_FRAM,
             "header found at offset: %d: 00 %02x %02x %02x\n",
             i - 1,
             data[i],
             data[i + 1],
             data[i + 2]);
     return data + i + (sd->sof_len - 1);
    }
    break;
   }
  }
  break;
 }
 return ((void*)0);
}
