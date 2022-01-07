
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ bridge; int header_read; int* header; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ BRIDGE_103 ;

__attribute__((used)) static u8* find_sof(struct gspca_dev *gspca_dev, u8 *data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, header_size = (sd->bridge == BRIDGE_103) ? 18 : 12;
 for (i = 0; i < len; i++) {
  switch (sd->header_read) {
  case 0:
   if (data[i] == 0xff)
    sd->header_read++;
   break;
  case 1:
   if (data[i] == 0xff)
    sd->header_read++;
   else
    sd->header_read = 0;
   break;
  case 2:
   if (data[i] == 0x00)
    sd->header_read++;
   else if (data[i] != 0xff)
    sd->header_read = 0;
   break;
  case 3:
   if (data[i] == 0xc4)
    sd->header_read++;
   else if (data[i] == 0xff)
    sd->header_read = 1;
   else
    sd->header_read = 0;
   break;
  case 4:
   if (data[i] == 0xc4)
    sd->header_read++;
   else if (data[i] == 0xff)
    sd->header_read = 1;
   else
    sd->header_read = 0;
   break;
  case 5:
   if (data[i] == 0x96)
    sd->header_read++;
   else if (data[i] == 0xff)
    sd->header_read = 1;
   else
    sd->header_read = 0;
   break;
  default:
   sd->header[sd->header_read - 6] = data[i];
   sd->header_read++;
   if (sd->header_read == header_size) {
    sd->header_read = 0;
    return data + i + 1;
   }
  }
 }
 return ((void*)0);
}
